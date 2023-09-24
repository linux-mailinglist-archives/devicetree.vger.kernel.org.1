Return-Path: <devicetree+bounces-2805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 167867ACAB9
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 18:10:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 2EA6D1C20757
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 16:10:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E35A6D526;
	Sun, 24 Sep 2023 16:10:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D48FED51F
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 16:10:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0963BC433C7;
	Sun, 24 Sep 2023 16:10:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695571816;
	bh=Mq2zlNEBEmW/v8GykfAzRmPVFkTZXaNIJLfPtE9LL8Q=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=E/faWBSQlsUEnWu+DNzZYDWB9/7SQ342FwTL3y7bD8RCC6XutNNxnJGzb1dAnaFtY
	 ELMIMGEwfoPErBN2q71sgf9CbJ1UYFn3z41OY6ANECI0bpEVLYjPur2OtX8nWv+AUc
	 B9uh6eUEHtgw1Ocxd/RsaknyH6nuX2ZQy+0F5Tx+E2fPcUMOHeMkyn/mhbAfIlzeCp
	 ug3FMUH5PXQe4DVWpM6PVNxW38SWcHN/YzK60dxVp8dm60qaBKyjdjCSAyk0jR/LRM
	 sF6QKKTT3G4Weyf3GhNE4KNkUMN5pTsk6o8tC81xZJ9PyxJS5ID6PPMfG5NEM19zzK
	 azKxx/FsXpVYw==
Date: Sun, 24 Sep 2023 17:10:07 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Matti Vaittinen <mazziesaccount@gmail.com>, Lars-Peter Clausen
 <lars@metafoo.de>
Cc: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Angel Iglesias
 <ang.iglesiasg@gmail.com>, Andreas Klinger <ak@it-klinger.de>, Christophe
 JAILLET <christophe.jaillet@wanadoo.fr>, Benjamin Bara <bbara93@gmail.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/6] iio: try searching for exact scan_mask
Message-ID: <20230924171007.2012a879@jic23-huawei>
In-Reply-To: <20230924170726.41443502@jic23-huawei>
References: <cover.1695380366.git.mazziesaccount@gmail.com>
	<24a577e6e157e1199817ab36631cec51675ef3ca.1695380366.git.mazziesaccount@gmail.com>
	<20230924170726.41443502@jic23-huawei>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sun, 24 Sep 2023 17:07:26 +0100
Jonathan Cameron <jic23@kernel.org> wrote:

> On Fri, 22 Sep 2023 14:17:49 +0300
> Matti Vaittinen <mazziesaccount@gmail.com> wrote:
> 
> > When IIO goes through the available scan masks in order to select the
> > best suiting one, it will just accept the first listed subset of channels
> > which meets the user's requirements. This works great for most of the
> > drivers as they can sort the list of channels in the order where
> > the 'least costy' channel selections come first.
> > 
> > It may be that in some cases the ordering of the list of available scan
> > masks is not thoroughly considered. We can't really try outsmarting the
> > drivers by selecting the smallest supported subset - as this might not
> > be the 'least costy one' - but we can at least try searching through the
> > list to see if we have an exactly matching mask. It should be sane
> > assumption that if the device can support reading only the exact
> > channels user is interested in, then this should be also the least costy
> > selection - and if it is not and optimization is important, then the
> > driver could consider omitting setting the 'available_scan_mask' and
> > doing demuxing - or just omitting the 'costy exact match' and providing
> > only the more efficient broader selection of channels.
> > 
> > Signed-off-by: Matti Vaittinen <mazziesaccount@gmail.com>  
> 
> Whilst I fully agree with the reasoning behind this, I'd rather we
> did an audit of drivers to find any that have a non logical order
> (one came up today in review) and fix them up.
> 
> A quick and dirty grep didn't find it to be a common problem, at least
> partly as most users of this feature only provide one valid mask.
> The few complex corners I found appear to be fine with the expected
> shortest sequences first.
> 
> Defending against driver bugs is losing game if it makes the core
> code more complex to follow by changing stuff in non debug paths.
> One option might be to add a trivial check at iio_device_register()
> that we don't have scan modes that are subsets of modes earlier in the list.
> These lists are fairly short so should be cheap to run.
> 
> That would incorporate ensuring exact matches come earlier by default.

BTW I'd have sent these as a separate series as there is potential that
this will distract from or slow down the driver + not all the CC list
will care about this core cleanup.

Jonathan

> 
> Jonathan
> 
> 
> > ---
> >  drivers/iio/industrialio-buffer.c | 25 +++++++++++++++++++------
> >  1 file changed, 19 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/iio/industrialio-buffer.c b/drivers/iio/industrialio-buffer.c
> > index 176d31d9f9d8..e97396623373 100644
> > --- a/drivers/iio/industrialio-buffer.c
> > +++ b/drivers/iio/industrialio-buffer.c
> > @@ -411,19 +411,32 @@ static const unsigned long *iio_scan_mask_match(const unsigned long *av_masks,
> >  						const unsigned long *mask,
> >  						bool strict)
> >  {
> > +	const unsigned long *first_subset = NULL;
> > +
> >  	if (bitmap_empty(mask, masklength))
> >  		return NULL;
> > -	while (*av_masks) {
> > -		if (strict) {
> > +
> > +	if (strict) {
> > +		while (*av_masks) {
> >  			if (bitmap_equal(mask, av_masks, masklength))
> >  				return av_masks;
> > -		} else {
> > -			if (bitmap_subset(mask, av_masks, masklength))
> > -				return av_masks;
> > +
> > +			av_masks += BITS_TO_LONGS(masklength);
> >  		}
> > +
> > +		return NULL;
> > +	}
> > +	while (*av_masks) {
> > +		if (bitmap_equal(mask, av_masks, masklength))
> > +			return av_masks;
> > +
> > +		if (!first_subset && bitmap_subset(mask, av_masks, masklength))
> > +			first_subset = av_masks;
> > +
> >  		av_masks += BITS_TO_LONGS(masklength);
> >  	}
> > -	return NULL;
> > +
> > +	return first_subset;
> >  }
> >  
> >  static bool iio_validate_scan_mask(struct iio_dev *indio_dev,  
> 


