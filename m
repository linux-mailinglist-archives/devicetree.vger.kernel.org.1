Return-Path: <devicetree+bounces-15394-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A0B67E9E34
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 15:11:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E64D9280D46
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 14:11:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 595FA20B36;
	Mon, 13 Nov 2023 14:10:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J3ay90WH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6A22031B;
	Mon, 13 Nov 2023 14:10:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 56B90C433C8;
	Mon, 13 Nov 2023 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699884657;
	bh=2vpy58rQTHTP9krRVNgcAQrv/Q/+avRu6pax/Biruds=;
	h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
	b=J3ay90WHC4ALuWZzRA6IAYlybdjApZS9p2RVDXtuXHnkWS7x0DOZEkfn/uXDp1IaA
	 WKiPqVM1DJvqdJejm4ZO6tnPrJqw8ph6QyrtjW28Eq1bIzm31leY/dGKFXYYWHqYBg
	 y4VAgNZtktIzHV0GYWAuc05wxFSClKCWiwIG1puKsf6fT95+mEDV1F8PJLUgOpzpCb
	 B8BJO0bcBD1XK821yKbKpCc1kInm6+ae4p8lWG++1F9rXd4OwuakoWh+YekOWxi9/m
	 a2CnN0GSmBUE+1nNZ1B68QZDp9mnQKs+PnOVIYmYyHH8fjQraIzZIjG4zR0lMfkvN0
	 GjZqHE6whIX9g==
From: Kalle Valo <kvalo@kernel.org>
To: "Luca Weiss" <luca.weiss@fairphone.com>
Cc: "Dmitry Baryshkov" <dmitry.baryshkov@linaro.org>,  "Konrad Dybcio"
 <konrad.dybcio@linaro.org>,  "Andy Gross" <agross@kernel.org>,  "Bjorn
 Andersson" <andersson@kernel.org>,  "Mathieu Poirier"
 <mathieu.poirier@linaro.org>,  "Rob Herring" <robh+dt@kernel.org>,
  "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,  "Conor
 Dooley" <conor+dt@kernel.org>,  "Manivannan Sadhasivam" <mani@kernel.org>,
  <cros-qcom-dts-watchers@chromium.org>,
  <~postmarketos/upstreaming@lists.sr.ht>,  <phone-devel@vger.kernel.org>,
  "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>,  "Rob Herring"
 <robh@kernel.org>,  Matti =?utf-8?Q?Lehtim=C3=A4ki?=
 <matti.lehtimaki@gmail.com>,
  <linux-arm-msm@vger.kernel.org>,  <linux-remoteproc@vger.kernel.org>,
  <devicetree@vger.kernel.org>,  <linux-kernel@vger.kernel.org>,
  <ath11k@lists.infradead.org>
Subject: Re: [PATCH 9/9] arm64: dts: qcom: qcm6490-fairphone-fp5: Enable WiFi
References: <20231027-sc7280-remoteprocs-v1-0-05ce95d9315a@fairphone.com>
	<20231027-sc7280-remoteprocs-v1-9-05ce95d9315a@fairphone.com>
	<12ea48bd-5022-4820-815a-89ef23ec9385@linaro.org>
	<CWMK0AQRL87L.1F9MIDVQ4J439@fairphone.com>
	<CAA8EJpqCeW8NVcrpwo6JVn0kE2W-QMELB1YH7i7pgOH6qiPbCQ@mail.gmail.com>
	<87zfzhu9kx.fsf@kernel.org> <CWXP3TCW3A1G.2ME0JJT3S540G@fairphone.com>
Date: Mon, 13 Nov 2023 16:10:51 +0200
In-Reply-To: <CWXP3TCW3A1G.2ME0JJT3S540G@fairphone.com> (Luca Weiss's message
	of "Mon, 13 Nov 2023 13:50:21 +0100")
Message-ID: <87r0ktu4k4.fsf@kernel.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.2 (gnu/linux)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

"Luca Weiss" <luca.weiss@fairphone.com> writes:

>> >> > > --- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
>> >> > > +++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
>> >> > > @@ -713,3 +713,7 @@ &venus {
>> >> > >     firmware-name = "qcom/qcm6490/fairphone5/venus.mbn";
>> >> > >     status = "okay";
>> >> > >  };
>> >> > > +
>> >> > > +&wifi {
>> >> > > +   status = "okay";
>> >> > qcom,ath11k-calibration-variant?
>> >>
>> >> What value would I put there for my device? Based on existing usages
>> >> (mostly for ath10k) I'd say "Fairphone_5"?
>> >
>> > I think this is fine.
>>
>> From style point of view I would prefer lower case and dashes, for
>> example "fairphone-5" but I'm just nitpicking, uppercase and underscores
>> work fine as well.
>
> I really don't mind, but I used "Fairphone_5" in v2 now, but I can
> change it for v3 if that happens if you wish.

Nah, no need to resend. That's fine.

But in the future please try to CC the ath11k list for patches like
this, easier to follow what's happening.

-- 
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

