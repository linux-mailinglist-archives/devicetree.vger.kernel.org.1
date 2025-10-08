Return-Path: <devicetree+bounces-224340-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 29772BC328E
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 04:19:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EDAC4188E714
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 02:19:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC4D729B8EF;
	Wed,  8 Oct 2025 02:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ahaQ+NAg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65DC529B237
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 02:18:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759889933; cv=none; b=T67cND82U8oaDYU722Q9w6f8rcZa6Ykjdb4a40Ty6stVT47IZBSp4+zEoDgBd/NHfFAlDU8iZ1oPJID9L+tCm/EmWx/jWGqxKYa96LOqc6WBFCrqaowaof8soqCbY4XZ7UdIOv+1ySmt4wKcPWOf7GrkKKN9jVMTmKbW6BnhLKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759889933; c=relaxed/simple;
	bh=eLUKCid2mCzEr3f2IULaa6Mi8dzk04iOMQ1Cu+awDD0=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=IQVTycfxv6JYg5dDkHuhASnE4u2S3n5qXLVyGKqSM6YRux4kht99d4P0wzfECW8Bifg1YtJFicCfvGrfM8t5KYipL7NktB7UVMy6TValRNdeQ1IYbfnp1K8hg1dXCRQR7lgtSv0TTHn47kotMBMB/4WjrBCG1G5PuZKuxzoPcFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ahaQ+NAg; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3f2ae6fadb4so1821297f8f.1
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 19:18:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759889929; x=1760494729; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=micbjQhFRi56rmBZKMQCddkVTulgFVdWxWszGqRTF54=;
        b=ahaQ+NAgrWEPQIWuYqcDIOvUoZ3mn+pgDminfwb0D23x9JG3hjU5U92zv2E3HqJMO6
         gNawUbzwU2KVurUIPikMg9FOl2X/zB+5JZ0Qm+pQTMzwia3+/qHPF+/sJYrxsMj9KqHg
         GoiozcubMSwutgCST7fk3Fgh46HutkmdyGafcQJL76KUMdnL2bIzwpprswGJp1Bj7NAu
         AMIis8KZLI4JdFV6TBfdsfK+MuDnA0/wI6omoHxCAKvg9/t7Jnp2XCSBUx4AdDbCYeKf
         LXok8IgB0KIRL1Jr6znbw2hpYMT643pXKwmSLOn6d1VFMzZIHvJekxYTtk8bW8p+fG1m
         fK3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759889929; x=1760494729;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=micbjQhFRi56rmBZKMQCddkVTulgFVdWxWszGqRTF54=;
        b=a+0WfaRNhOEpUhmT0tvCLAZWHa8I7nuWHbqjGI/lR+SFJ8PCLPqpk5RQMttCW+Nftj
         zWcDox74IIKXwJrTdFOY5S+i2XAnHdfrZXFuS7hHTcVPNyumf7sbCyc1nzfo8X0N4Drt
         VjLD6Ma64Kg6OkkYDsk/xegD1+au4hVRxa5cCrvYLgIjqywE5lDer9d4tKcaa3C9Cfon
         j1qxpkws4eQAMoi6bGfiYgcmjhSMzXLjpZc9CNdFVEMFFbF7kdryqhCXfvE/2XZgO/5a
         GO3GWRjzHV0VVF1z1pbkniEYUw3Ai4aK+CRNdYpf8DPYQTLR/Kea0eIfbZIa/xQ5wiJm
         uMXA==
X-Forwarded-Encrypted: i=1; AJvYcCXNUjVkKfVnWR7qgYUreaD3zF6m5f6S/R8dYH9zJMZEIbypOMKad6iVJKMfQb8bC19WvHCZf4iqSKLU@vger.kernel.org
X-Gm-Message-State: AOJu0YylMorxYhI42EDkCwKrBzRp5qD+rqpnaddiaUT4U291EIFFkwP/
	zFKijXGWH4UBM+iH0eAnjetrPN3x5S02/GnaiHdWtmFA4zxMQoGmjUXGZw36yZAGhEI=
X-Gm-Gg: ASbGncsvdPZzr4z8N8oNnTarYJpHR9GQyUDpXTxBy+VBKPjJJt+niAcfk7HBeUAkxF9
	FmcO8Df3hKLQBsScRK9VSEOfEtF+fVVB/vtStKO/4TTdb31UidCtBbGyUtzh9LFeOcMnUXvf9Iu
	aG3w+KgviBNFistQTtZNqP5+gmdjMkSDG2ax+3rZ7TQRFkGQZ2aIvhMLTcjmkLLi5FCgrFFC+zn
	uX7NoV1CbyqW5tL7JECZpspBkhX4btRXyLen7M0PzXGVPQc8AL1BMBoaA8zBp/jM5MNQ0xUoUFS
	VZU0vMHA2ukQxKKP8ndrtKb6oVy3eRnMpuBbYlrwgvTc6XIzK/JDRVfzBD0wkb5cjN/t56A4bWO
	R4I29uKnBBE3IpiAloTWyYyTdVrMoh7zVbuY8u7ZbZHumYwm3XoLq6M4=
X-Google-Smtp-Source: AGHT+IFPMFJByHAQ3JW76Qjmt7UP+fMZMpkYgj4Y9V9tn3CZdsWTV3HC+ojk6qaBDfa1ihXXI4WNNA==
X-Received: by 2002:a05:6000:3105:b0:3fc:54ff:edb6 with SMTP id ffacd0b85a97d-4266e7dfdb3mr815912f8f.35.1759889928751;
        Tue, 07 Oct 2025 19:18:48 -0700 (PDT)
Received: from localhost ([2a02:c7c:7259:a00:8c32:dd4d:57f2:8be7])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46fa9c16990sm15668705e9.10.2025.10.07.19.18.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Oct 2025 19:18:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 08 Oct 2025 03:18:47 +0100
Message-Id: <DDCKWVH8ORLM.357D9IKQK9YN8@linaro.org>
Cc: "Srinivas Kandagatla" <srini@kernel.org>, "Liam Girdwood"
 <lgirdwood@gmail.com>, "Mark Brown" <broonie@kernel.org>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Stephen Boyd" <sboyd@kernel.org>, "Lee
 Jones" <lee@kernel.org>, "Jaroslav Kysela" <perex@perex.cz>, "Takashi Iwai"
 <tiwai@suse.com>, <linux-arm-msm@vger.kernel.org>,
 <linux-sound@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Dmitry Baryshkov"
 <dmitry.baryshkov@oss.qualcomm.com>, "Srinivas Kandagatla"
 <srinivas.kandagatla@oss.qualcomm.com>, <christophe.jaillet@wanadoo.fr>
Subject: Re: [PATCH v4 2/4] dt-bindings: mfd: qcom,spmi-pmic: add
 qcom,pm4125-codec compatible
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Krzysztof Kozlowski" <krzk@kernel.org>
X-Mailer: aerc 0.20.0
References: <20250915-pm4125_audio_codec_v1-v4-0-b247b64eec52@linaro.org>
 <20250915-pm4125_audio_codec_v1-v4-2-b247b64eec52@linaro.org>
 <20250918-wonderful-deft-jackal-7d3bbc@kuoka>
In-Reply-To: <20250918-wonderful-deft-jackal-7d3bbc@kuoka>

On Thu Sep 18, 2025 at 3:03 AM BST, Krzysztof Kozlowski wrote:
> On Mon, Sep 15, 2025 at 05:27:49PM +0100, Alexey Klimov wrote:
>> Add qcom,pm4125-codec compatible to pattern properties in mfd
>> qcom,spmi-pmic schema so the devicetree for this audio block of PMIC
>> can be validated properly.
>>=20
>> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
>> ---
>>  Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 6 ++++++
>>  1 file changed, 6 insertions(+)
>>=20
>> diff --git a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml b=
/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
>> index 078a6886f8b1e9ceb2187e988ce7c9514ff6dc2c..776c51a66f6e7260b7e3e183=
d693e3508cbc531e 100644
>> --- a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
>> +++ b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
>> @@ -137,6 +137,12 @@ patternProperties:
>> =20
>>    "^audio-codec@[0-9a-f]+$":
>>      type: object
>> +    oneOf:
>> +      - $ref: /schemas/sound/qcom,pm8916-wcd-analog-codec.yaml#
>> +      - properties:
>> +          compatible:
>> +            const: qcom,pm4125-codec
>
>
> Not much improved. Same feedback applies.

Around the time of sending this I thought to set separate follow-up patch
that fixes the other part here -- pm8916-wcd-analog-codec.

At this point, is it fine to send follow-up patch that does smth like
this:

+    oneOf:
+      - $ref: /schemas/sound/qcom,pm8916-wcd-analog-codec.yaml#
+      - properties:
+          compatible:
+              - enaum:
+                - qcom,pm4125-codec
+                - qcom,pm8916-wcd-analog-codec

?

(I didn't check how if it will compile or pass checks)

Hope this is okay.

Best regards,
Alexey

