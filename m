Return-Path: <devicetree+bounces-195083-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CD407B00582
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 16:45:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A72DF646D4F
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 14:44:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CA3E273D89;
	Thu, 10 Jul 2025 14:45:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oCIn/on9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387252727FC
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 14:45:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752158721; cv=none; b=YeL7NR4eVPWBWCtrmkhRG4fJSrclIjp7gMbr828bgqFbQcjnE+SwduThkBjpziC0hIyv/7Gl6ACwFpE4CiOIaALdXdM5U2kqAfPgt3TD8QDvJ00HQ4QHALvegAn9G1EecrL8cTCIk8R8P4lFVLojdpZqP9O/+86LT2Ep4Umloc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752158721; c=relaxed/simple;
	bh=GuuXNEIIHpc+OomKipbBSS2eHjtAi/KmN/JAHDNUxyc=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=WCzqFfI/AkLdLLqecEZ0cmA8DiCbxV65E7ALJVHCLNORhPuee3h9/Ru/Kwm4lgHVxMco2xDoaVU+3z48N9HS72tQKqZNDlgDWwOAuWwnqFhIBoOAgNxCifp/oG6weH+bhE71fBzGK+yAansTL/gUSit68NTST6Zoows74GZRQIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oCIn/on9; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3a6e2d85705so754617f8f.0
        for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 07:45:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752158717; x=1752763517; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uzpztVBg8Kr6uCTVYsLaqFYuf7mdKz1OXaJIFB3Ydtk=;
        b=oCIn/on9utF4YPok+p2VGklKSBD403Ij+BG8HfSHqMNQJYLJD76XgMAToTA4bJPDj1
         EfG4LoatNTE335CrCfp3k3IhIqD+jiVOdwmtrEOZojho6Q9KgfmE5Pk4wPQqg2xLmook
         VkPK4zu82itBzZJxoP5ZH9ZUXewXdd+FFWSnOL2JpRI4BoXfdLsy/N5puNhZdZJ3XEPu
         rYm/1dQv8k1CdJIBvnGYR5PSQFXvRSpFASIm3OQhw4Qq1W93RpXxq+O5hs//OWKtklhF
         qYdwToupp8/a+/OS4XcZnzcLTtSlwoCW5Dlbx3LzIe+sZBtoygoNEgOSR/DQi1BXDr13
         tPow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752158717; x=1752763517;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uzpztVBg8Kr6uCTVYsLaqFYuf7mdKz1OXaJIFB3Ydtk=;
        b=nXDXhAddolVd2uvxD1j0CPkNyTBYfvSs06p5g0/oSowXtG96eNSMBBv04W4hCE+xIK
         fBGA/GqOVbouO7C3insgO3Z74O56KaXNv59TzMFeeUFnfPY0/LsclWDh4UyRO5VGOCCv
         cymYp8PRzI2wuVo907NgLRxKSE6hyeYjFu2kIWo2xzCvjn5XIwkWS9/9MELdT77sFMQb
         q+s6gcQv2Z1986Gu5YAceKJK+ZanUIfgr9Cm+ZIRrVaPq38JL2f54HREkmbAUa9gWl8o
         A2UdZDUFojknACt2XuF71o2PT7eC5yaV0nyMvozImfwlndo1xGWxDFcqgesIg6Cxrwq8
         v5vQ==
X-Forwarded-Encrypted: i=1; AJvYcCUx4+oOeVSqEFJv0wEjzg5bB75FWV2rditP+m+5Q+H+BOz2jxkroTKkWlZxkQnbWsUYhaFc7JkDGDkj@vger.kernel.org
X-Gm-Message-State: AOJu0YxQOYf6Iwpah1HrjqZrDaKIuih5iFL/U4HywJN7/mU/0RzuvGcg
	/kFpU502mmTqgUNobp22p8470Inll+jA1lxJzE3zCGy8KlVITnd7uBgxzoArL91whzIQVxo2gVz
	UDVkk5Fs=
X-Gm-Gg: ASbGncv+QYfOBS1/tSswxOnv0Xg4eVSaJ0iP3EkhmoUpFPGgNsNOPc5BaclbCtNvwgN
	6qX+OMN64QwmCL2OsfJIHRC08p0uedZ4apyl1IlYLlxQkUMQ4PNhrkrVQ4hhSAHf3/QFFjDlEFb
	kMIXG507+W5RGErJzjaOZ30kehfiGKFG7Q9LZAhv7kudFX21biXQ/7vhkh7sVwmDsIipKDR6YCc
	w8D4QcvaITtV+kzuONT3ck6HsDs6dV97D7sh8TJjlSj7whS3kpmHNJ/6DQXpZw60g+gAZ6n13l3
	IehQ2BXTiTdAUqFA0+krajMN+sQ5Hwt2aqHgsbUWHE6+mHShdgNLfuLD2EIlY/reiqM=
X-Google-Smtp-Source: AGHT+IF9BLMRIl1cpwDsXcnH1f3gWfggPdcwbBjL9LEkWjPoKOu+RvwtjCs5eMcSNOOmyzdBY+cr/g==
X-Received: by 2002:a05:6000:250d:b0:3a4:df80:7284 with SMTP id ffacd0b85a97d-3b5e44e1fefmr6408642f8f.1.1752158717358;
        Thu, 10 Jul 2025 07:45:17 -0700 (PDT)
Received: from localhost ([2a00:2381:fd67:101:6c39:59e6:b76d:825])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b5e8e1e135sm2085810f8f.72.2025.07.10.07.45.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Jul 2025 07:45:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 10 Jul 2025 15:45:15 +0100
Message-Id: <DB8GFDXKQ6V1.BXX5KGBJP6YS@linaro.org>
Cc: "Srinivas Kandagatla" <srini@kernel.org>, "Liam Girdwood"
 <lgirdwood@gmail.com>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Stephen Boyd" <sboyd@kernel.org>, "Lee Jones" <lee@kernel.org>, "Jaroslav
 Kysela" <perex@perex.cz>, "Takashi Iwai" <tiwai@suse.com>,
 <linux-arm-msm@vger.kernel.org>, <linux-sound@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>, "Dmitry
 Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>, "Srinivas Kandagatla"
 <srinivas.kandagatla@oss.qualcomm.com>
Subject: Re: [PATCH 3/3] ASoC: codecs: add new pm4125 audio codec driver
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Mark Brown" <broonie@kernel.org>
X-Mailer: aerc 0.20.0
References: <20250626-pm4125_audio_codec_v1-v1-0-e52933c429a0@linaro.org>
 <20250626-pm4125_audio_codec_v1-v1-3-e52933c429a0@linaro.org>
 <aF01gRFjsKgy6j4V@finisterre.sirena.org.uk>
 <DB0YYV10UD2Q.M36VAZJOVE7V@linaro.org>
 <af605c12-74c1-418e-9fe8-c0aa893a62bd@sirena.org.uk>
In-Reply-To: <af605c12-74c1-418e-9fe8-c0aa893a62bd@sirena.org.uk>

On Tue Jul 1, 2025 at 10:04 PM BST, Mark Brown wrote:
> On Tue, Jul 01, 2025 at 08:35:42PM +0100, Alexey Klimov wrote:
>> On Thu Jun 26, 2025 at 12:56 PM BST, Mark Brown wrote:
>> > On Thu, Jun 26, 2025 at 12:50:31AM +0100, Alexey Klimov wrote:
>
>> >> +static int pm4125_micbias_control(struct snd_soc_component *componen=
t,
>> >> +				  int micb_num, int req, bool is_dapm)
>> >> +{
>> >> +	return 0;
>> >> +}
>
>> > Why have this empty function which is only called from within the
>> > driver?  At best it's making the callers look like they do something.
>
>> I tried to make a minimal working version that we're going to
>> update with more patches during next submission.
>
> Add the callers when you need them, right now this is just noise.
> Nobody can tell if the callers make sense since the function does
> nothing.

Ok, I cleaned it for the next version. Thanks.

>> >> +#if defined(CONFIG_OF)
>> >> +static const struct of_device_id pm4125_of_match[] =3D {
>> >> +	{ .compatible =3D "qcom,pm4125-codec" },
>> >> +	{ }
>> >> +};
>> >> +MODULE_DEVICE_TABLE(of, pm4125_of_match);
>> >> +#endif
>
>> > Why does this compatible exist?  If the driver is instantiated from a
>> > as a Linux software contruct it shouldn't appear in the DT.
>
>> Could you please elaborate a bit more? Should it be instantiated
>> as an MFD device or platform device?
>
> Yes, if it's the child of a MFD then it shouldn't need to be described
> separately in the DT.

Currently, it is going to be described as child/slave device:

spmi_bus {
	pmic@0 {
		pmic4125_codec: codec {
			...
		}
and will go probably in pm4125.dtsi which lists all child nodes with
compatibles. Not sure if it is because each PMIC is customazable or because
of better maintainability.
Also, might need specific description of regulators which may vary from
board to board. Not sure how is that supposed to be done without device
tree description at this point.

Thanks,
Alexey

