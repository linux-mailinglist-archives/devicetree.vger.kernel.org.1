Return-Path: <devicetree+bounces-218876-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B4C4B8535A
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 16:26:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1A16F18841FE
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 14:21:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0085305076;
	Thu, 18 Sep 2025 14:15:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Lk7TGhlz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA06A30CB4C
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 14:15:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758204909; cv=none; b=IAYF44ZHGhZ00zYkQ1bzWRXgxP0w/Jlujzn2RmtWg2PASz1CNvDr2bEInQnn2W5P7iGnkg/qFerBufB1p+kL2//hmsDr/SQGRFdCXzVt6S12xqf/7xJCSGUHi4neBn5EsoSpkE93it8mJffgEvVG40nhIBJTogDnxO25SeCoYUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758204909; c=relaxed/simple;
	bh=0coe/QFA46JTNO8ZaDwBRkRFUpFZ853bhqXJwpYcdJU=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=Zp3TRhbjclw6DlWTHS4ctlTtxikutavfkoY8ltwDpYKll6dR8VBSZGCaiwuuZ5GM1duAUnJuc84uUsRWUTFJPhJDS7/BIWpmSOC/uNuVEtOUNuXxGPjtrWGmFrJuj4dGmN9+w06ffluODvG8FZrSLafXlGN3PsNA0fMNoXBH9DU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Lk7TGhlz; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-45f2f10502fso6107745e9.0
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 07:15:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758204905; x=1758809705; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u+c/huWZ2XQVoB94N5MFK08nC3wxU/KugANouKkKYms=;
        b=Lk7TGhlzYn6lyGn8+tHFCIin/wZclvaCNn1jUlAL5YNc3Y3YUN5A3jSRj095h//S09
         HQWdvLaugIm80UdoTqK9u0n/sN3EfK2q9t4EIiz3nmJR1uia9594eS+C99pxPj8mdR5Z
         2deea6jyfC4SRfJtlUXjOH7pX0cAxxxf9D/zVQpUFOJRFRpRf01aGs1MORhVe4DhJuMp
         Od7kkZIRngBJ0GUMSlORi+BAfOG2l/7Rb9AZ0JFlQJA8m+ss7U/GOPzMLzsA7dvdgxVz
         RSVbMab0NrCfmQM4AZXqsJioZjAMabqRlEJDee9qTOeU33++d6wNwJeMe7/FziBna6E9
         okmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758204905; x=1758809705;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=u+c/huWZ2XQVoB94N5MFK08nC3wxU/KugANouKkKYms=;
        b=E3r39IlXo3mCu5PTsYJFksssSZ1ocJ0OyHYK+lzq6RllWu5aHD0T+ZNlIEQu621UoG
         JcWBpxUn0sq1/Smhl5R3+/WaZhlVRACeAAsIDjRN6o0mWpAD5KCUDI0AfsjNTS61SJjF
         YQijcfMK97gk2vTYvsKJ/T9eB3BeWiRSbmQKVDVgZ8OQrpel8K3jBtphp4JrNwhXvoRE
         bD9XOhoNaiJluYWiXs71auqYzEVI8TTJgQ1AUI66wxOM1G4ZKBCk/q7qVLbsUHpCLgpX
         SUuFTzgJTEOQ/EYgdd8qZharLWQzAHd8mLPZYbPZUOP37Koo1uzAmaZpjMPVCAnmLe/3
         0RzQ==
X-Forwarded-Encrypted: i=1; AJvYcCUWS/nrs+g0YrDD6crUKl8DLu/cMRMd+Cal9YgBVrxNMvWl8A+Vbq7loPCkbF2RpOfsWnNYAnfpY68b@vger.kernel.org
X-Gm-Message-State: AOJu0YyzTR9z+KElRqF7ZIbdgkIDLPtOWGSX7hD8NkDL5pWS4yQv1LmY
	+am/JtPNqSm4HWxn/OWJzLydEj0V5uRGDh2TZNpDgrZ+f/wMQw8cupeGKmxVPk4dp8k=
X-Gm-Gg: ASbGncueWLJOoWKZ5TVUwhLcLmv0SiHCoyUPeeeC+5G7LNZ0kqibpDk81wf7pW6WYjk
	5L3tr6WRIq2tDFGjblS/xszDKNm814ZRYZhwtOcRujs6ih+aWsZkNr5hL3TQmLHS9r1cR46T1FQ
	zMVs8Nr9hhhKUbmEPDZxB/hTZQG6A39O6MiFLzvMfz88bQ8IuK+98bKzPMvnsBCV1Uu+H137Zi4
	gPwl8PB8Y2TK5yyitcEF9d+ZL0gRQ7PLbov9uBDy+l0BUWJQtmRFz3eHOnndz5hSlHRU1nKoyZj
	tjoSs+6cONda7MHV1tSMS2H3I3GILfitjr54roSsT7M9mYcnRAnB3SaxdVLjjeTmtkalXEbGBQr
	WocNAsWhifk6xc9LUhlND/v644CGkv47u3IAKQjLPmHqJ6sI=
X-Google-Smtp-Source: AGHT+IEYvV21OOIrM80imACv5lq+0ZHSelW3dyd44ly0+BqTeDL00+tLVvxEUiu7IKEHLLcpukn1Bw==
X-Received: by 2002:a05:600c:1385:b0:45d:d944:e763 with SMTP id 5b1f17b1804b1-462070ed655mr54250015e9.33.1758204904949;
        Thu, 18 Sep 2025 07:15:04 -0700 (PDT)
Received: from localhost ([2a00:2381:fd67:101:6c39:59e6:b76d:825])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4613e93dd85sm94618805e9.22.2025.09.18.07.15.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Sep 2025 07:15:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 18 Sep 2025 15:15:01 +0100
Message-Id: <DCVZMD9HWPX0.LOKMJXTY1Y46@linaro.org>
Cc: <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-sound@vger.kernel.org>
Subject: Re: [PATCH 5/5] arm64: dts: qcom: qrb2210-rb1: add HDMI/I2S audio
 playback support
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com>, "Bjorn Andersson"
 <andersson@kernel.org>, "Linus Walleij" <linus.walleij@linaro.org>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "Konrad Dybcio"
 <konradybcio@kernel.org>, "Srinivas Kandagatla"
 <srinivas.kandagatla@linaro.org>, "Liam Girdwood" <lgirdwood@gmail.com>,
 "Mark Brown" <broonie@kernel.org>
X-Mailer: aerc 0.20.1
References: <20250302-rb1_hdmi_sound_first-v1-0-81a87ae1503c@linaro.org>
 <20250302-rb1_hdmi_sound_first-v1-5-81a87ae1503c@linaro.org>
 <58d32bd4-d854-4233-89c9-22c37bddfaa1@oss.qualcomm.com>
In-Reply-To: <58d32bd4-d854-4233-89c9-22c37bddfaa1@oss.qualcomm.com>

On Tue Mar 4, 2025 at 4:56 PM GMT, Konrad Dybcio wrote:
> On 2.03.2025 3:49 AM, Alexey Klimov wrote:
>> Add sound node and dsp-related pieces to enable HDMI+I2S audio playback
>> support on Qualcomm QR2210 RB1 board. That is the only sound output
>> supported for now.
>>=20
>> The audio playback is verified using the following commands:
>> amixer -c0 cset iface=3DMIXER,name=3D'SEC_MI2S_RX Audio Mixer MultiMedia=
1' 1
>> aplay -D hw:0,0 /usr/share/sounds/alsa/Front_Center.wav
>>=20
>> Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
>> ---
>>  arch/arm64/boot/dts/qcom/qrb2210-rb1.dts | 49 +++++++++++++++++++++++++=
+++++++
>>  1 file changed, 49 insertions(+)
>>=20
>> diff --git a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts b/arch/arm64/boot/=
dts/qcom/qrb2210-rb1.dts
>> index 7a789b41c2f1887f0c41ae24da2e2fe8915ab13c..e547537cffdbc13cfd21b8b8=
b7210b62996ff431 100644
>> --- a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
>> +++ b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
>> @@ -186,6 +186,47 @@ vph_pwr: regulator-vph-pwr {
>>  		regulator-always-on;
>>  		regulator-boot-on;
>>  	};
>> +
>> +	sound {
>> +		compatible =3D "qcom,qrb2210-rb1-sndcard", "qcom,qrb4210-rb2-sndcard"=
;
>> +		pinctrl-0 =3D <&lpi_i2s2_active>;
>> +		pinctrl-names =3D "default";
>> +		model =3D "Qualcomm-RB1-WSA8815-Speakers-DMIC0";
>> +		audio-routing =3D "MM_DL1", "MultiMedia1 Playback",
>> +				"MM_DL2", "MultiMedia2 Playback";
>> +
>> +		mm1-dai-link {
>> +			link-name =3D "MultiMedia1";
>> +
>> +			cpu {
>> +				sound-dai =3D <&q6asmdai MSM_FRONTEND_DAI_MULTIMEDIA1>;
>> +			};
>> +		};
>> +
>> +		mm2-dai-link {
>> +			link-name =3D "MultiMedia2";
>> +
>> +			cpu {
>> +				sound-dai =3D <&q6asmdai MSM_FRONTEND_DAI_MULTIMEDIA2>;
>> +			};
>> +		};
>> +
>> +		hdmi-i2s-dai-link {
>> +			link-name =3D "HDMI/I2S Playback";
>> +
>> +			cpu {
>> +				sound-dai =3D <&q6afedai SECONDARY_MI2S_RX>;
>> +			};
>> +
>> +			platform {
>> +				sound-dai =3D <&q6routing>;
>> +			};
>> +
>> +			codec {
>> +				sound-dai =3D <&lt9611_codec 0>;
>> +			};
>
> "codec" < "cpu" < "platform"
>
> with that:
>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Yes, you're right. I need to sort it for the next version. Thanks.

Best regards,
Alexey

