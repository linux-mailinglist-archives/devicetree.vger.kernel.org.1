Return-Path: <devicetree+bounces-168567-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 45C59A937EE
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 15:27:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C29E21B64151
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 13:27:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AE42278172;
	Fri, 18 Apr 2025 13:27:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="jXgqJ3X8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 607B1277003
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 13:27:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744982848; cv=none; b=VxJ7XiH7q8fFKBP76k0jZfDGQPDP3MRy1EnCuITIoyG+Qg0zWc+FxiQqBqko3i2GsAsM84d9IyWgvJcZHquq7g87jlhyo49/GwMrmPvQzxrnkZOpvmDdWs7Q+7Wv1dsNwzKveR1c9pvQiOaWGyA/R9Kg/IX14AKThCuO1c54RdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744982848; c=relaxed/simple;
	bh=ZfQD3/+RCCp6w2X5pFl73K13VoUBihGR1tLCPPFL6bs=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=Ztja7MEWxubjtr0MHhLNiSEea/Koa9YRTEXRpUYETKx+nO3zULK9JxqFkRU0eTrsuy1rRb6wMSYEecLEV1SIEZD6JDPcDgLXM3GFZWtS3/yTp6TJYhnvCSJM+zKCtP30KC8QOW5bijIX2IXkipgr31SoarSDaHYtv38wVaHq/qA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=jXgqJ3X8; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-ac2bdea5a38so281015766b.0
        for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 06:27:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1744982844; x=1745587644; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uxgFXjvo+MA6Q5OOS8hwkxxF0ljFWJI+c946KCUiiiw=;
        b=jXgqJ3X8/5NVJl2RhmCLQjS7E3JUA6AiBSWizYSR+H4JAkuCKdxEfMe8qp5cqWNAC/
         0MXao4deM+fegnNiCrBB5qRriM7dTE6TsC459xX+SlFe+mTrhQVJcH5JKSLgqY3Zk9qs
         /yLCJiV0Bg2a/XUH3MywNBQKSfZaaVh4XoNoHkoeg64kd0UI3ZvL8ooLcmRj0V9+rlD9
         6H4gB2SC1aL1lGeWNK5uv/oHEz3aPmUhtcA8yQtddagczy4W6EUkL7ym0fqsCgDNfIhz
         LcoKVBA57qc5zC2d9u3zIecATIGoEXbRvQXR4x0yfbfp/PCJP4BBP05ksMQUHf9tjCzJ
         wzQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744982844; x=1745587644;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uxgFXjvo+MA6Q5OOS8hwkxxF0ljFWJI+c946KCUiiiw=;
        b=F/GaGVVBjV8heZWCPksu3dLj9Bsb8khy8aacYzhhX2nTnhnJWLqNrFKCOjcFj03wDw
         lwt6BJIz3AUR5eDfKnDO+t/cysCnyahg7N030MWgHrhgbHZ92iTFW1EaI8rCKml5yDFR
         A5f4355VK+JIYT+3JlLmHlY9Thr41VLDXS4nfsg8W4hFfw1KlS3DsPO2opLUvPDc+QI2
         EuqtUheQ3V7ILU3XV1ADz49IZCDSyeRUsiqt8DI2wLSPcIf7Uo13O5jiPnqZO1R/QTpY
         yEIsb9WLmdDRPOTBW9H32AUaQj5Oy+70G1vf9mSCMhg3gqufE3chq4iI4NfFLF6f6+2G
         Vg4g==
X-Forwarded-Encrypted: i=1; AJvYcCXR7ZdPZwvTJ7pB27tcyCwMNrn6+ExWcLSd580z7UDTsT81caH8MeYinnS17wkV2xdbNhjgQ2pc4uat@vger.kernel.org
X-Gm-Message-State: AOJu0YwjxyUSM00TM4/A8JG52FQJYj9ssEblhaqymifCjUDksKOiqQlX
	Hki/d63qpeTiSZMTHkUoRmsMdPm/jT27VqwUrkQU5tJttxZvYYrePWbLjotCGLQ=
X-Gm-Gg: ASbGncv2L/Li7dwQaHu3jSzltEGVahH8d2LocbY266ZXIYBZmHXHOxdTccjgqS9mk3t
	QKhBNZfBeER//etk90OphetF3Nuk/Zbkicjh4IsjbmxfYIZ2Cy6hKMlNqX55gqJ/tdCWVz28xb6
	cLE8/7P497wGsxhjdI62rIYImy9lEa5oLpYp9qhze7wHLlVccrfvdlWd3F1LRw9tnlhp9VH5Ppj
	l1tZDKHjCnz2J4TqJvxKfIBMzORNB/Tg7VKKHs4J2zv2a3kbuJvEh3gBU3bfhoe3Ig7m9w66455
	j+alfngimhqPxr2Q0LY34iooQzBx5QTD/QykximMe+InniQozsLNFo4d+Rsplzl9o22sQRBuuJZ
	DtROeFpHhBg==
X-Google-Smtp-Source: AGHT+IG5MqN3XHhnQCGQht4kZrrXV6XlNR9m/tX+qwXV2gswzunEL45vEdv1W+p+F4CE0N6b52FGXw==
X-Received: by 2002:a17:907:d716:b0:acb:39c6:3974 with SMTP id a640c23a62f3a-acb74aa9634mr240183966b.5.1744982843560;
        Fri, 18 Apr 2025 06:27:23 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb6eefcf5bsm120065366b.117.2025.04.18.06.27.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Apr 2025 06:27:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 18 Apr 2025 15:27:22 +0200
Message-Id: <D99SSJAOJE3V.ENIEJ9IWFZLF@fairphone.com>
Cc: "Bjorn Andersson" <andersson@kernel.org>, "Konrad Dybcio"
 <konradybcio@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 <cros-qcom-dts-watchers@chromium.org>,
 <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Konrad Dybcio"
 <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v2 0/3] Fairphone 5 DisplayPort over USB-C support
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Luca Weiss" <luca.weiss@fairphone.com>, "Dmitry Baryshkov"
 <lumag@kernel.org>
X-Mailer: aerc 0.20.1-0-g2ecb8770224a
References: <20250312-fp5-pmic-glink-dp-v2-0-a55927749d77@fairphone.com>
 <y7dfv4mmtzkv2umvverkn6qvjt3tg7cz4jj4zsb4t6vu4heh4d@64zpkjihjc23>
 <D8V75HO8O4CO.33RMUJLKQ7UG5@fairphone.com>
In-Reply-To: <D8V75HO8O4CO.33RMUJLKQ7UG5@fairphone.com>

Hi Krzysztof, hi Dmitry,

Any feedback on the below proposed patch?

I can also send out a v3 with this patch included soon if that makes it
easier to review.

Regards
Luca

On Tue Apr 1, 2025 at 11:32 AM CEST, Luca Weiss wrote:
> Hi Dmitry,
>
> On Wed Mar 12, 2025 at 8:06 PM CET, Dmitry Baryshkov wrote:
>> On Wed, Mar 12, 2025 at 01:05:07PM +0100, Luca Weiss wrote:
>>> This series adds all the necessary bits to enable DisplayPort-out over
>>> USB-C on Fairphone 5.
>>>=20
>>> There's currently a dt validation error with this, not quite sure how t=
o
>>> resolve this:
>>>=20
>>>   arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dtb: typec-mux@42: por=
t:endpoint: Unevaluated properties are not allowed ('data-lanes' was unexpe=
cted)
>>>           from schema $id: http://devicetree.org/schemas/usb/fcs,fsa448=
0.yaml#
>>
>> This comes from usb-switch.yaml, it requires that 'port' adheres to the
>> /schemas/graph.yaml#/properties/port (which forbids extra properties).
>> The usb-switch.yaml needs to be fixed to use port-base for that node.
>
> Thanks, do you think the attached patch would be suitable? It does fix
> the warning for me, but not sure if it's too lax or doing the wrong
> thing.
>
> diff --git a/Documentation/devicetree/bindings/usb/usb-switch.yaml b/Docu=
mentation/devicetree/bindings/usb/usb-switch.yaml
> index da76118e73a5..9598c1748d35 100644
> --- a/Documentation/devicetree/bindings/usb/usb-switch.yaml
> +++ b/Documentation/devicetree/bindings/usb/usb-switch.yaml
> @@ -26,11 +26,15 @@ properties:
>      type: boolean
> =20
>    port:
> -    $ref: /schemas/graph.yaml#/properties/port
> +    $ref: /schemas/graph.yaml#/$defs/port-base
>      description:
>        A port node to link the device to a TypeC controller for the purpo=
se of
>        handling altmode muxing and orientation switching.
> =20
> +    patternProperties:
> +      "^endpoint(@[0-9a-f]+)?$":
> +        $ref: /schemas/graph.yaml#/$defs/endpoint-base
> +
>    ports:
>      $ref: /schemas/graph.yaml#/properties/ports
>      properties:
>
>
> Regards
> Luca
>
>>
>>>=20
>>> See also this mail plus replies:
>>> * https://lore.kernel.org/linux-arm-msm/D0H3VE6RLM2I.MK2NT1P9N02O@fairp=
hone.com/
>>>=20
>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>>> ---
>>> Changes in v2:
>>> - Move adding "*-switch;" properties already in earlier patches
>>> - Move wiring up SS USB & DP to SoC instead of being done in device
>>> - Pick up tags
>>> - Link to v1: https://lore.kernel.org/r/20250226-fp5-pmic-glink-dp-v1-0=
-e6661d38652c@fairphone.com
>>>=20
>>> ---
>>> Luca Weiss (3):
>>>       arm64: dts: qcom: qcm6490-fairphone-fp5: Add PTN36502 redriver
>>>       arm64: dts: qcom: qcm6490-fairphone-fp5: Add OCP96011 audio switc=
h
>>>       arm64: dts: qcom: qcm6490-fairphone-fp5: Hook up DisplayPort over=
 USB-C
>>>=20
>>>  arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 103 +++++++++++++=
++++++--
>>>  arch/arm64/boot/dts/qcom/sc7280.dtsi               |   9 +-
>>>  2 files changed, 104 insertions(+), 8 deletions(-)
>>> ---
>>> base-commit: dcb11dc4740372cd4cce0b763a4a8ec4e9f347a6
>>> change-id: 20231208-fp5-pmic-glink-dp-216b76084bee
>>>=20
>>> Best regards,
>>> --=20
>>> Luca Weiss <luca.weiss@fairphone.com>
>>>=20


