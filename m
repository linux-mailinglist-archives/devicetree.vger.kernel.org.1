Return-Path: <devicetree+bounces-14834-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 41C8F7E6E70
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 17:17:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 71BBD1C20364
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 16:17:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C972A210F1;
	Thu,  9 Nov 2023 16:17:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DqAcvwh7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB61D1DDF2
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 16:17:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 424CFC433BA;
	Thu,  9 Nov 2023 16:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699546634;
	bh=MHoWuekJf7fZq+eCzFMo8ejeVfJQEuG6O0L8sRZ3zdw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DqAcvwh7gcbigIUgyDm0Ck7aJoA4cCqzACaIpsw3g6pDS3duLYNexl9TunWAd0Yvk
	 PjAyS+/TfSLFabNdbHPo4F9JO6hKZP9jsn0xeAciukKn/Y00maYsvLoegWa0vfkWpG
	 JW/TOSvV1FpH7yx6m1s97E720GZEvIJNVd+wtiNwr6rSL6RNUpL5ZrVwmyTlwkN7cy
	 AYbVC5PeVt043B5OA9if0qFzxRCQNccX75V9/dAcwgGOmjrNYof17yHvc6YpdHpLtn
	 fDO/j8cwBHfluPB5JYQxy9D6UlltFK9P66LmSwo03Ia0oYL9e8x96yxB4+Jda+tWlJ
	 Qte/CugKciSww==
Date: Thu, 9 Nov 2023 21:46:56 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Bart Van Assche <bvanassche@acm.org>,
	Ziqi Chen <quic_ziqichen@quicinc.com>, quic_asutoshd@quicinc.com,
	quic_cang@quicinc.com, beanhuo@micron.com, avri.altman@wdc.com,
	junwoo80.lee@samsung.com, martin.petersen@oracle.com,
	quic_nguyenb@quicinc.com, quic_nitirawa@quicinc.com,
	quic_rampraka@quicinc.com, linux-scsi@vger.kernel.org,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>, Wolfram Sang <wsa@kernel.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Mark Brown <broonie@kernel.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] dt-bindings: ufs: Add msi-parent for UFS MCQ
Message-ID: <20231109161656.GH3752@thinkpad>
References: <1698835699-28550-1-git-send-email-quic_ziqichen@quicinc.com>
 <20231106144831.GA317907-robh@kernel.org>
 <5850d5ac-e735-4358-866d-f410b00ba39d@acm.org>
 <CAL_Jsq+XB5p_K3C+rc5XetQ-Xfxu4umNFzcF0idB2hhZvS7HLA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL_Jsq+XB5p_K3C+rc5XetQ-Xfxu4umNFzcF0idB2hhZvS7HLA@mail.gmail.com>

On Thu, Nov 09, 2023 at 07:55:14AM -0600, Rob Herring wrote:
> On Mon, Nov 6, 2023 at 11:56 AM Bart Van Assche <bvanassche@acm.org> wrote:
> >
> > On 11/6/23 06:48, Rob Herring wrote:
> > > On Wed, Nov 01, 2023 at 06:48:13PM +0800, Ziqi Chen wrote:
> > >> The Message Signaled Interrupts (MSI) has been introduced
> > >> to UFS driver since the MCQ be enabled.
> > >
> > > Not really relevant when a driver supported MSI, but the when the h/w
> > > did. Has UFS always supported MSI? It was added in some version of the
> > > spec?
> >
> > MSI support has been introduced in UFSHCI version 4.0 and I think that
> > the controller vendor can decide whether or not to implement MSI. Does
> > this mean that the patch needs to be improved?
> 
> Yes, this information is what should be in the commit msg rather than
> driver details.
> 

Yes, agreed. Ziqi, please update the commit message to incorporate the hw
details about when MCQ/MSI got introduced. Devicetree binding should describe
the hw, not the driver.

- Mani

> Rob

-- 
மணிவண்ணன் சதாசிவம்

