Return-Path: <devicetree+bounces-130689-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CD169F0A5E
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 12:04:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 54FEC18865CD
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 11:04:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B9731C4A17;
	Fri, 13 Dec 2024 11:04:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="T4PpMeEk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424A21C3BFA
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 11:04:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734087860; cv=none; b=HACu5mhocO0MPV8KzYA3qSQkkAtCBfrosMi8WnJIQ9bjWuX1/klLM66xAXNgyFsWxBfwebPcrXjxovEBniCmFmQApCu81PLWoUurmMTxrhgmK+AKOiZKNGYgBXWP7m0sDZQ4dmaWpO8wuHLlsGkIyrlUcakvqvyf1f6f8toddp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734087860; c=relaxed/simple;
	bh=8feasqDMNRGSqXgnrXNVRMsBVCYovHpwXdrFnhXAPTQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ms881qB2XiCPNy73dM9J1g2/951syV7RExviYvfZu+pj/9Q8BcybPhvxJlyPjWamPMJEjeEciTb7HlqtFtONv89pUu7tj5HRiHL8lgYQD5jA/FupgiPGzW4cXrOFbGQuDQgpxU5mDQcpOgfB68sy51Q2bETAItJ1jsNCD0auJW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=T4PpMeEk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BD46MTO018813
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 11:04:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Zf5tcpszL0I6CSUFS4CayyJ0mUkMjSZvXwP8wY2d3NI=; b=T4PpMeEkja7PnlT3
	+PpeEFsTfsHV/LSfhm2TmHzVGk2uD+sCCourRojmAidHaOKTqfix2KPxdFlYEFBg
	BGYjkFDMRXoNYxrYBfPbrBJTDZXhlSykITPKSG35qncG2PmOWb8yByzvtS6VXgJF
	a7SBKri4J37oUvKL4zG+q86fusOdY3KPALdQ81Q/BD48wAX9NpoaTo0Cvs43tiJE
	qW9W9yRN4t9hIYsVnCAhLU+P8AdlApbz7t2I2Nq7Hk1OLTTysGdn4rhIG8+Pjpeo
	9f3EZJgSMNwDKQJn93x2bts4ap4KV95rV9XtLh5VXROM256Ut096IC9YMZ/1JggW
	dJveUQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43gdkn12ee-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 11:04:18 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6d881a3e466so4071676d6.3
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 03:04:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734087857; x=1734692657;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Zf5tcpszL0I6CSUFS4CayyJ0mUkMjSZvXwP8wY2d3NI=;
        b=sNTl86kjf0JIb1oHdDSdpc2E5gb2kAccZcivwRIMEw7v5MDZVFW6CP9bNAJlZB+4Yf
         DGgyMq5tTRaIZzvlPxzSBAsyC66Eg4xTs/DZFy+OOs19XGTDDOPZlF7gTZf71ySavrm7
         +4/xFuY6ZPdtKMHcmpQLed1XbQzdG1KfxV+jGtPDWtcWONmK+Jy90NY2MHaKqcV3snto
         3eSX19w1m4MPTfa2sYLMrVY+LTsnUMg2OOzHEY02mMgp2uqzFgaOJu2GvtNKZr0UW6aU
         tne69LJ1RtQ073gZR71qQ2eSXhzCEB9vCisS63XQwQKYnvWfM04qfA1NHIdOJKvMNr9P
         Mk/A==
X-Forwarded-Encrypted: i=1; AJvYcCXTn1c1MjWzqlhaX7lJv9WMISNgrdEIiiMDhiWb52enjyPRkbnWQHT2BBqsnTh8Ks1HwMiHzMrtsYej@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1zSesLTvSqabg4Z4s940VcQ0yrtHtxG7s3470DgJIvFYv+GQ/
	CCxNUjO9AGcru3uN4VJMozzl46kkeLyvOPGimDwaxVhN9Tz/dRjldGsTS+5iVHz3QlVXohqx2im
	/mBjIW/iWMFO9ILWMFe1fvBmeBETqLKZ/boeihaNliTbBi4o5FP5CMnJNvNlC
X-Gm-Gg: ASbGncv5MXhudQldyD5WIaYkASrgrWIVzAurUQcfSuZzOMBDJ5KRpQoHmPLHqlXeuFs
	dOaZMIl60pj/i9ZxmaIv/bvQnCD/Fhd08qcwDaju+07pkCDnNUESNjWOY3t4d04J+R3Isb7m5Es
	HLgtlWGxHUn4kvtW5iGDhDP5zSf/hq9w4/MPfk2/UXoUh24rNQUGXvdnw9upTEQEkh6BZ9mdOv0
	PGJQNNvDxPMtEPYxvk7NKvbGQvzsQ4l5advsBjvvrFr3yLfmxoEvtTmSYH8rnBCfoe5fCgAwpK7
	Rw/3q+xqJ+eGg7NhzdioG6zLiZIAG93ANiLt
X-Received: by 2002:a05:6214:528d:b0:6d4:1bc2:386c with SMTP id 6a1803df08f44-6dc8ca88c66mr12119826d6.6.1734087857085;
        Fri, 13 Dec 2024 03:04:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEwU07CFAexr1Cwdav3EaM4qqvfC+IfOGzgD65mUO8CZKe+Bc/O5r+o5/bbUyKkdi+zvUmNPA==
X-Received: by 2002:a05:6214:528d:b0:6d4:1bc2:386c with SMTP id 6a1803df08f44-6dc8ca88c66mr12119636d6.6.1734087856602;
        Fri, 13 Dec 2024 03:04:16 -0800 (PST)
Received: from [192.168.58.241] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa66f90d5f8sm833016466b.202.2024.12.13.03.04.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2024 03:04:16 -0800 (PST)
Message-ID: <5b5ad9f7-5071-4b4e-940d-aedecf179600@oss.qualcomm.com>
Date: Fri, 13 Dec 2024 12:04:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sc8280xp: Add Huawei Matebook E Go
 (sc8280xp)
To: Pengyu Luo <mitltlatltl@gmail.com>, konrad.dybcio@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: andersson@kernel.org, chenxuecong2009@outlook.com, conor+dt@kernel.org,
        devicetree@vger.kernel.org, gty0622@gmail.com, johan+linaro@kernel.org,
        konradybcio@kernel.org, krzk+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        robh@kernel.org
References: <d5813d64-0cb2-4a87-9d98-cebbfd45a8c0@oss.qualcomm.com>
 <20241213085100.564547-1-mitltlatltl@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241213085100.564547-1-mitltlatltl@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: k7x2Ym0ihnaqlhtNWSwlDto-X1ggJ5AR
X-Proofpoint-ORIG-GUID: k7x2Ym0ihnaqlhtNWSwlDto-X1ggJ5AR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 mlxlogscore=999
 impostorscore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501
 phishscore=0 bulkscore=0 suspectscore=0 mlxscore=0 adultscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412130075

On 13.12.2024 9:50 AM, Pengyu Luo wrote:
> Oh, I sent it by gamil wrongly(forgot cc to), I resend it by git send-email again
> 
> On Fri, Dec 13, 2024 at 1:13 AM Konrad Dybcio <konrad.dybcio@oss.qualcomm.com> wrote:
>> On 11.12.2024 4:37 PM, Pengyu Luo wrote:
>>> Add an initial devicetree for the Huawei Matebook E Go, which is based on
>>> sc8280xp.
>>>
>>> There are 3 variants, Huawei released first 2 at the same time.
>>> Huawei Matebook E Go LTE(sc8180x), codename should be gaokun2.
>>> Huawei Matebook E Go(sc8280xp@3.0GHz), codename is gaokun3.
>>> Huawei Matebook E Go 2023(sc8280xp@2.69GHz).
>>>
>>> We add support for the latter two variants.
>>>
>>> This work started by Tianyu Gao and Xuecong Chen, they made the
>>> devicetree based on existing work(i.e. the Lenovo X13s and the
>>> Qualcomm CRD), it can boot with framebuffer.
>>>
>>> Original work:
>> https://github.com/matalama80td3l/matebook-e-go-boot-works/blob/main/dts/sc8280xp-huawei-matebook-e-go.dts
>>>
>>> Later, I got my device, I continue their work.
>>>
>>> Supported features:
>>> - adsp
>>> - bluetooth (connect issue)
>>> - charge (with a lower power)
>>> - framebuffer
>>> - gpu
>>> - keyboard (via internal USB)
>>> - pcie devices (wifi and nvme, no modem)
>>> - speakers and microphones
>>> - tablet mode switch
>>> - touchscreen
>>> - usb
>>> - volume key and power key
>>>
>>> Some key features not supported yet:
>>> - battery and charger information report (EC driver required)
>>> - built-in display (cannot enable backlight yet)
>>> - charging thresholds control (EC driver required)
>>> - camera
>>> - LID switch detection (EC driver required)
>>> - USB Type-C altmode (EC driver required)
>>> - USB Type-C PD (EC driver required)
>>
>> Does qcom_battmgr / pmic_glink not work?
>>
> 
> Unfortunately, different from many sc8280xp devices, device(PMGK) _STA is
> Zero,
> this device is quiet strange, also, it has no PM8008,
> nor PMIC Battery Miniclass(PMBM), etc.

So it's not used on windows.. but have you tried checking if it's
still provided by the firwmare?

[...]

>>
>>> +     chosen {
>>> +             #address-cells =3D <2>;
>>> +             #size-cells =3D <2>;
>>> +             ranges;
>>> +
>>> +             framebuffer0: framebuffer@c6200000 {
>>> +                     compatible =3D "simple-framebuffer";
>>> +                     reg =3D <0x0 0xC6200000 0x0 0x02400000>;
>>> +                     width =3D <1600>;
>>> +                     height =3D <2560>;
>>> +                     stride =3D <(1600 * 4)>;
>>> +                     format =3D "a8r8g8b8";
>>> +             };
>>> +     };
>>
>> This should be redundant, as you should have efifb
>>
> 
> I think no, it won't boot up without it(stuck at EFI stub: Booting Linux
> Kernel)

Do you have CONFIG_EFI and CONFIG_FB_EFI enabled?

(also, your email client does something funny and posts 0x3d, which
is ASCII for '=' after that symbol)


> 
> [...]
> 
>>
>>> +
>>> +     wcd938x: audio-codec {
>>> +             compatible =3D "qcom,wcd9380-codec";
>>> +
>>> +             pinctrl-names =3D "default";
>>> +             pinctrl-0 =3D <&wcd_default>;
>>
>> Please follow this order throughout the file:
>>
>> property-n
>> property-names
>>
> 
> Do you mean I should arragne as following? If so, I actually keep
> reference devicetree untouched. x13s and crd are written like this.

Yeah, we try to unify the style as we progress and we still haven't
gotten around to cleaning up files that have been in the tree for
years..

> 
> pinctrl-0 =3D <&wcd_default>>;
> pinctrl-names =3D "default";

Yes please

[...]

>>> +     gpio-keys {
>>> +             compatible =3D "gpio-keys";
>>> +
>>> +             pinctrl-names =3D "default";
>>> +             pinctrl-0 =3D <&mode_pin_active>, <&vol_up_n>;
>>> +
>>> +             switch-mode {
>>> +                     gpios =3D <&tlmm 26 GPIO_ACTIVE_HIGH>;
>>
>> This could use a label too - "Tablet Mode Switch", perhaps?
>>
> 
> This part I follow Lenovo Yoga C630 one (see [1]), it doesn't use it,
> and this node is not referenced.

So "label" could mean

label: node-name@unit-address {
	property = "value";
};

when talking about DT nodes, but here I'm speaking of the
"label" property (which you set to "Volume Up" in the node below).
That is read by Linux and provides a nice human-readable name to
the userspace.

>>
>>> +
>>> +             /* /lib/firmware/ath11k/WCN6855/hw2.1/board-2.bin
>>> +              * there is no calibrate data for huawei,
>>> +              * but they have the same subsystem-device id
>>> +              */
>>> +             qcom,ath11k-calibration-variant =3D "LE_X13S";
>>
>> Oh, this can be taken care of! See [2], [3].
>>
> 
> I have a glance, now I know we should extract something or it won't be
> there.
> Question is how can I extract them? I have a quick search, got no luck.
> As for windows drivers, in the folder
> 
> bdwlan.e02
> bdwlan.e07
> bdwlan.e1d
> bdwlan.e1e
> bdwlan.e23
> bdwlan.e26
> bdwlan.e32
> bdwlan.e47
> bdwlan.e81
> bdwlan.e84
> bdwlan.e85
> bdwlan.e8c
> bdwlan.e8e
> bdwlan.e9f
> bdwlan.ea3
> bdwlan.eb8
> bdwlan.elf
> bdwlan.elf.g
> bdwlang.e8b
> bdwlang.e9f
> bdwlang.ea3
> bdwlang.eb8
> bdwlang.elf
> Data20.msc
> Data.msc
> m320.bin
> m3.bin
> qcwlan8280.cat
> qcwlan8280.inf
> qcwlan8280.sys
> regdb.bin
> wlanfw20.mbn
> wlanfw.mbn

Adding Dmitry who has gone through this multiple times and may be
able to help

Konrad

