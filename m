Return-Path: <devicetree+bounces-4853-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB4E7B41A3
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 17:32:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 1099A1C20AAD
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 15:32:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8995E171A4;
	Sat, 30 Sep 2023 15:32:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77FE6168B5;
	Sat, 30 Sep 2023 15:32:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1AD47C433C7;
	Sat, 30 Sep 2023 15:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696087931;
	bh=1Tn6ZLkwalGfv97HZj9CO43jfDNacYTdeg5rnK92038=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=g3QjBNL5tanIYp5cGyuidY3IrcNPxXwHBnYSuDLs0VmGuQPsPtNLELqYoPyRSTziH
	 YP7eRhHq3iH1ekeMw4y2fuMQ/5d9Q5Iu/1yiCsV2+B6rAsPwfeK5QLr5uepZfb6fLH
	 UMTjFDZXyGTfBaPONyyGlZwWTRBHxBREmffl8K78Hy0WSgyTK5RdAAuQQfKX4M7s0G
	 RKU+T6Zz0XcB0VlM4Sf72r3nF44GNHcret5Cuiin9syXUqUkdKjv5S3wMuyEbWTJCI
	 PpyljX/E5iQEQtDtx+MObqSEPorMVWlTUvfnshlgtdC90l7VLcWmoEIy0gVYPVc3XX
	 UKdHcvuSo3CIg==
Date: Sat, 30 Sep 2023 16:32:09 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: David Lechner <dlechner@baylibre.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-staging@lists.linux.dev, David Lechner <david@lechnology.com>, Rob
 Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Michael Hennerich <Michael.Hennerich@analog.com>, Nuno =?UTF-8?B?U8Oh?=
 <nuno.sa@analog.com>, Axel Haslam <ahaslam@baylibre.com>, Philip Molloy
 <pmolloy@baylibre.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 22/27] staging: iio: resolver: ad2s1210: convert LOS
 threshold to event attr
Message-ID: <20230930163209.17ee0020@jic23-huawei>
In-Reply-To: <20230929-ad2s1210-mainline-v3-22-fa4364281745@baylibre.com>
References: <20230929-ad2s1210-mainline-v3-0-fa4364281745@baylibre.com>
	<20230929-ad2s1210-mainline-v3-22-fa4364281745@baylibre.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 29 Sep 2023 12:23:27 -0500
David Lechner <dlechner@baylibre.com> wrote:

> From: David Lechner <david@lechnology.com>
> 
> From: David Lechner <dlechner@baylibre.com>
> 
> The AD2S1210 has a programmable threshold for the loss of signal (LOS)
> fault. This fault is triggered when either the sine or cosine input
> falls below the threshold voltage.
> 
> This patch converts the custom device LOS threshold attribute to an
> event falling edge threshold attribute on a new monitor signal channel.
> The monitor signal is an internal signal that combines the amplitudes
> of the sine and cosine inputs as well as the current angle and position
> output. This signal is used to detect faults in the input signals.
> 
> The attribute now uses millivolts instead of the raw register value in
> accordance with the IIO ABI.
> 
> Emitting the event will be implemented in a later patch.
> 
> Signed-off-by: David Lechner <dlechner@baylibre.com>

I think I'm fine with treating these internal signals like this, but
I would ideally like someone from Analog devices to take a look at how
these are being done and make sure our interpretations of the signals
make sense to them.  We are pushing the boundaries a little here (though
we have done similar before for fault events I think.)

Jonathan


