Return-Path: <devicetree+bounces-224857-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9560EBC869B
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 12:10:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3B25F4EA300
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 10:10:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 122162D97A0;
	Thu,  9 Oct 2025 10:10:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="Vc+9kMgs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD5F2D8783
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 10:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760004638; cv=none; b=jTZj1nl5s5hFMZo7q9qEqakCCN8YDyks8thf2wbYsZu/t4jGaplFlA8jbHuMEnMbBfZ+MCa+EI4exwBsc8UrYyycBWK0he+DFt8wHHtZJXAZxskEsxFhncUSQxW/tHTSlvgMwGp/7HhMSYTO/9NwMEgQgxwM8bOraPhpIpsSmIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760004638; c=relaxed/simple;
	bh=gG4uos5u7JZYKZN9sVpZMjMGBZVjLgLK+l61W+7327M=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=FZzELfa5hVYsOuaZZapdtDf5DT7qnsT+2uMCsYy05R1DmZUJ6BiLtehh8UjLjVlLhA2HthDfX3m9eWmGgpO7p0ducxUysl4bGA6YxdM90dUIDEx/xYVjjAd98QBKbGcyF2tkJtZMSkt+5uHmCbqkFVju7EHkCaSCNOL8oJcp39c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=Vc+9kMgs; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-b3da3b34950so122015866b.3
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 03:10:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1760004634; x=1760609434; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=viQs/zJlFXUzbGPc0YC6fbKblNDfZ3K6sukiP7yGwdA=;
        b=Vc+9kMgsIuD+EPFwhTPJRM3ETJLY+5xhBq6fHJL+NQO1JMT55AeQ0euergmAZNMFHh
         FjqSA152TXjMzTDqgw5X8N9U1vOcNWRfPQqD8YOoaltg3YtLg6RQgQEbE6V5mzXDi2Tn
         +6AbmCnlD3nsaNrl/1o889LGizsjF+sMuBZLtlmrLY60mD6VufMlt/us830IwRubUu1+
         UssuUPtfw/QbqkRaPurP5p1N/JIhJYCh73Ylky3ImPWGi36foOBpsc9Xv1CslboiyyZz
         yWB759KdXeZh/fAmuCBl8MNgLeS84pHnEpIpoCRyU+8o5es7TinxldV0Y67/UShoy3Oo
         R/Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760004634; x=1760609434;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=viQs/zJlFXUzbGPc0YC6fbKblNDfZ3K6sukiP7yGwdA=;
        b=kvCO5sjSHTX21sUqn6Z8enWrOeIrq2YuF440djEoP0LCO0AKEu/4xhXMiQn6aubMdk
         V6Mminn3V2cXB8nErJdUTBFI0yVwhgkTOWte7ski9l+ZIqe0AFuT0l0YVzb1pB8bNkpE
         jejSqc5XSzS7CV0riQOYvI9A+98V6P2pwfTKnFWwho/UVFScFR9PU6dmJs3Oue/BXmvn
         QE3oCxHp07JX2pimRccwfzYQy9ckuxyJanIG1ps/lvw5xN9MTfpNizHzpWPuKws5XSjw
         3EzPztL8ba90fvJtzS9ECE4fOwv3X1GJwtER7NJr/+4+Hou8kbpHPMyT77Wr9yUqp/AF
         ziaA==
X-Forwarded-Encrypted: i=1; AJvYcCUBMtxT3HFejKnOc1XWkW41mPBw6jMmv4gIVCkpUy8SpDg2y47r8+I1ByRjIC1p/DkdMrmIzemcDyXW@vger.kernel.org
X-Gm-Message-State: AOJu0Yxi5ZeKTnFOHc5XckN8VMoeuZhEM8qJopg7zpG5iWjSlSMkX+uj
	nXodvO13WB5ca04aGEOxeyNSeJZgoKgS0XNDAZy+Gurkc5kO0wJ53u8TpC1mh9qQrA5sorqF8xd
	yazn6Ucc=
X-Gm-Gg: ASbGncuK8lhZAAsQG87hoKTapc/ta1Mvq/VJDloHgxicfnxhDc9IiSmfmxVC5FN7ATc
	FYgc2Jl8WlL3uYvrZNZpKce3gq6i2mutWmeKbOqArdmEsTPKV8s3Wxgbx4lF0HlK8M3km7lFkVn
	LyMD+djh7LWdv7QnRC3HoP9vyptC/i48b4U9dfCxQRlwMtOc6JAeCDDPJffnggtosVSJmQI+ZJf
	KDAECNXC5tqlIVN9FoIGq7o020utskva3owYdMU8GinGqmU34FLzYN6j7tP2MEc8XsC3xeER9f7
	9K3ScdahnWrduB6sxiAZELu6HtEzMHNW5Iwbdp+9LUVCmNCiPfspVVXYzK360ier9sHAHOhICH2
	dM615cOq4uFdct7/XUemFx+TbjP2r44FT6248ltGrAXLVazYsuegPhSD8BA1tmIHWZffdJ+v7hl
	HAEiwPNsKPNMJ9VOMoLHfLlmqgjdI=
X-Google-Smtp-Source: AGHT+IFKo/O79Io0+uRDFxUtJz1dvwc4fUBNTtl0a5vuuzbIOA2sW+cayD8+0hP+Jrhv2ADqtpK2hA==
X-Received: by 2002:a17:907:d86:b0:b49:5103:c0b4 with SMTP id a640c23a62f3a-b50ac5d07f2mr831965466b.56.1760004634280;
        Thu, 09 Oct 2025 03:10:34 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4865e77427sm1905317166b.36.2025.10.09.03.10.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Oct 2025 03:10:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 09 Oct 2025 12:10:33 +0200
Message-Id: <DDDPKMMSAMJR.1JIQMK3W2Y40V@fairphone.com>
Cc: <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 2/5] arm64: dts: qcom: qcm6490-fairphone-fp5: Add
 VTOF_LDO_2P8 regulator
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com>, "Luca Weiss"
 <luca.weiss@fairphone.com>, "Bjorn Andersson" <andersson@kernel.org>,
 "Konrad Dybcio" <konradybcio@kernel.org>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Marijn Suijten" <marijn.suijten@somainline.org>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20250930-sc7280-dts-misc-v1-0-5a45923ef705@fairphone.com>
 <20250930-sc7280-dts-misc-v1-2-5a45923ef705@fairphone.com>
 <ac1c0d1a-36a9-4542-b879-06c017f7f2c4@oss.qualcomm.com>
 <DDDOF3F8K5WQ.FTJ0F6E6DLPG@fairphone.com>
 <8e452e51-3a95-49e6-91e3-53aa46fcfe2e@oss.qualcomm.com>
In-Reply-To: <8e452e51-3a95-49e6-91e3-53aa46fcfe2e@oss.qualcomm.com>

On Thu Oct 9, 2025 at 11:22 AM CEST, Konrad Dybcio wrote:
> On 10/9/25 11:16 AM, Luca Weiss wrote:
>> Hi Konrad,
>>=20
>> On Wed Oct 1, 2025 at 10:30 AM CEST, Konrad Dybcio wrote:
>>> On 9/30/25 3:57 PM, Luca Weiss wrote:
>>>> Describe yet another regulator-fixed on this board, powering the ToF
>>>> sensor.
>>>>
>>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>>>> ---
>>>>  arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 13 +++++++++++++
>>>>  1 file changed, 13 insertions(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch=
/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
>>>> index 36d5750584831d66b4c2faf6042e4cbb3274eca7..0a64e5721e092d1f3e4bb7=
329335704eee567761 100644
>>>> --- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
>>>> +++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
>>>> @@ -195,6 +195,19 @@ vreg_usb_redrive_1v8: regulator-usb-redrive-1v8 {
>>>>  		pinctrl-names =3D "default";
>>>>  	};
>>>> =20
>>>> +	vreg_vtof_ldo_2p8: regulator-vtof-ldo-2p8 {
>>>> +		compatible =3D "regulator-fixed";
>>>> +		regulator-name =3D "VTOF_LDO_2P8";
>>>> +		regulator-min-microvolt =3D <2800000>;
>>>> +		regulator-max-microvolt =3D <2800000>;
>>>> +		regulator-enable-ramp-delay =3D <233>;
>>>> +
>>>> +		gpio =3D <&tlmm 141 GPIO_ACTIVE_HIGH>;
>>>
>>> You may want to define the pincfg/mux config for this gpio too
>>=20
>> While I wouldn't say it's not good to have it, there's plenty of GPIOs
>> that have no pinctrl for it. Downstream doesn't set anything for gpio141
>> either.
>>=20
>> I honestly wouldn't even know what the 'default' for a GPIO is in the
>> first place, or could I query the runtime state from the kernel? Is
>> /sys/kernel/debug/pinctrl/f100000.pinctrl/pinconf-groups trustworthy to
>> solidify this in the dts?
>
> I normally use /sys/kernel/debug/gpios

Oh, if that works at least the path is a bit more memorable. I needed to
check quite some files in this directory to find the correct one.

>
>>=20
>> 141 (gpio141): input bias disabled, output drive strength (2 mA), output=
 enabled, pin output (0 level)
>
> but this seems to be formatted very similarly if not identically
>
> Generally it reads out HW state, via (among other things)
> msm_config_group_get()

So, you recommend setting a pinctrl for every single GPIO that's
referenced in the dts? Shall I send a patch to add all the missing ones?

Regards
Luca

>
> Konrad


