Return-Path: <devicetree+bounces-179017-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1025BABE68E
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 23:55:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A567D1BA4CD6
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 21:55:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1527225EF8A;
	Tue, 20 May 2025 21:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="I9lNQwaP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DB3725F7B3
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 21:54:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747778074; cv=none; b=pjrhqmxPlim75z2cbgL3NTwt+LFvea/OYldJUyexiPeXHEqnFlYKk5mJG0p+Yt5KPrrltP7nzQ1ytsp0hMp519C9P8tUHeioHqO3RQKnn6iNVnyGKa6C+EX+63ISLGyRS2wCZoOh04I+P2HCzuKAH+huzNk3hSG/g98aOBX/j38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747778074; c=relaxed/simple;
	bh=OVUpSlLQHrvQA3SAi0QRyVtEeRlG5qfNWWJDAQAoMso=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=te7WJRIrONNnm5bCev/lEAjjUsV3mz+DCTQ9yWKkIM1y/YFCqSC2KgMvQrXgJmdsdtyJHtX2R9wSuZXMtQUlEVQn1v/hMuKhM+d+PGG751bLiNWF6RVBYc8rDHAsxvQNVOqAWdFDTdbMEEfH+Drv7BgXBPgwuNoPvn3vTbQAYMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=I9lNQwaP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54KGdjPD024573
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 21:54:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ixEgJ9j+edtLlOT9h728vh1/XaPEUtQLSHRMgbMkV/Y=; b=I9lNQwaPAIGIF7Ug
	CC3OgloIymUyXQG6uMjV0RYoqq67cqsuIcxaEf01TsLDif/AVr4JmheHAMtFGtn+
	Fw12jFKmM3T3fsEbgwNcZUl9RMwfZNXlNw0JuLZ5QJgGgdU0QTZWsbJNcFIckiNq
	6Wz8Pg4SRKTrnhFQVSV9cYkJ4ZYIWC7UOAuF/MUTEnfnnmHnry+mLbCinjrw9u4P
	+dIBPWe+OwRu5xCusKQ8/mN8W3khyVfcdQjzG4RYj3dUVAkONBGqi8qvVaef/fQL
	gah+rvKwZAtVdSHSZlILptiI4HSScStDHCJ9IvnXQRYT1tG1+feTZ+dGnFK8NV8b
	JS84DA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwf30qp2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 21:54:31 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c54be4b03aso154351985a.3
        for <devicetree@vger.kernel.org>; Tue, 20 May 2025 14:54:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747778070; x=1748382870;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ixEgJ9j+edtLlOT9h728vh1/XaPEUtQLSHRMgbMkV/Y=;
        b=ORLqUK55U7jgmOMhG/HNdneTF1juERAd61G5BLOU2UWQGsnMHodaNm4qK2sMT4E+C/
         udGsGyUFDLc3akiCIaFrl2qr44sbYJT55psv/gqnWd4VazC+quEd7ICUHWnHfAu26e90
         b0UlV/pZWCVmKTgUMT+A3OEn0tHK+o3Gu1YUGMXkBMtIisL3XJV+SAUWi5g0ZdmuVKby
         qgpEGGg5f11LjzpgdWDfqni/VknJg/lfXkyCLlM5bEpBsR1pNmAuMETWJKGX4I/CEtqT
         pOCq2FxVUGZPFGVD857fuYvke7yIlScno6haMxrRSQutJk2ujeymAqojYEbemza2b4Mi
         ZPxQ==
X-Forwarded-Encrypted: i=1; AJvYcCUwgjUDM8BTmFezqG7ntraesEC6npq/W2aLzsRleOKllFMgqaqWcHC+TJ4jmIK/jMune6dYPZDO1A2T@vger.kernel.org
X-Gm-Message-State: AOJu0Yzc0RUIHoblb64vL7UiIjHjxiAVTiYH8M3iaYmAs3aksOT1CxKD
	5nVRUHtq5j61lUke9qA5HSO8H7/pjhItzv+SYM0aqyu0S1U/7JOy9P5P/F5sGcVMu67hn39FzbG
	z1o+xCUkfLgPHaont1BWrGBg/mr95oWDaSfYVbiii8tWZ27xwGZMGTohPWFoUtMdQ
X-Gm-Gg: ASbGncuW3T2/Uz2VIwp6mB97wMK7nmj+sN8Q2FcuWKlsFavl5C1UjmTjBUIE6HQU60O
	i0dclqZ8AGnnO4kuoHdOJZzE0Y/JbY/xNZPk/+LwWDDfntFS4UbY80ya35S0Z+vRURpti03k9QY
	+1uL1LbckZkJeWvDqjUiEMSTLWf+dxBY+QwJ708qse/CTMMx9HUYV1VLos44MFW6EPb/z01ejeF
	iKVRfMkzw5euXzEmOTFHWsFQYx4zlnn6inxqgxn6+5hDH72zUcdY8QQ/0HP1E9vtCDFtBLaIADH
	5JFY7er2FOq4uAFVcs7zgxRlzIofd+9wThbVdVnSaIMrVt937SjiuWt3JahB+DMa3A==
X-Received: by 2002:a05:620a:890b:b0:7c5:ac06:af8 with SMTP id af79cd13be357-7cd4674ba6dmr1105391685a.9.1747778069971;
        Tue, 20 May 2025 14:54:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGG9tmoVRvNJzsOqLZYPUDRI5WZg6Fye+cvUh3jfqKfn2OZ38omodgwTK/FgcrqyiAntIJh5Q==
X-Received: by 2002:a05:620a:890b:b0:7c5:ac06:af8 with SMTP id af79cd13be357-7cd4674ba6dmr1105390285a.9.1747778069482;
        Tue, 20 May 2025 14:54:29 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d04e816sm782275966b.23.2025.05.20.14.54.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 May 2025 14:54:29 -0700 (PDT)
Message-ID: <e4d65994-89dd-4068-a8db-050e698f9bb3@oss.qualcomm.com>
Date: Tue, 20 May 2025 23:54:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sm8650: Add support for Oneplus Pad
 Pro (caihong)
To: Pengyu Luo <mitltlatltl@gmail.com>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250520164208.516675-1-mitltlatltl@gmail.com>
 <20250520164208.516675-3-mitltlatltl@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250520164208.516675-3-mitltlatltl@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 3fnKMzD-xnXU5XVPo3jpQNlZN58KHEVN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIwMDE3NyBTYWx0ZWRfX+tkYY2ZRepDb
 hy9LvoxwzSUi0H4AV7ejm9XNM4xIdhfbM/cUg9m03/JzlLQO8rR+agueaCY33SUswJmTBDPRW2b
 A/iR3N3u6QE0GSASI/Dmb4kLHfjCKkO3ed+QoEbynFbUhVeGXh8Wtn09U24DZELPGNXemR/LtGb
 ZU7NtTXuv7h6IBfMwLk8aihZ8SES7Wmf1zLyALs8bDxsAbv5PjoR4wzZWp6o3RezymoGPRZyaM2
 bUamlBwbEvGrvIxD+FuoKvyI3GJS1NcZ58JyuxyDEdqs+/p9hA8I5OydlBQRVGhuiqNbMBZrr3L
 XIaAmuO9G5XdqfmoClSImSD1CSWQUXMLpKjjM5Yd7kjd8jQqiWwkgKYM+25tOStGPGLntg1bjS7
 opbjTcvX/9V6xNS01nMog5fRCyBQlY4C+e1bxYUjtMuXDP3ukQd8GSGbLyczKi+TYvjRaPcn
X-Proofpoint-GUID: 3fnKMzD-xnXU5XVPo3jpQNlZN58KHEVN
X-Authority-Analysis: v=2.4 cv=a9kw9VSF c=1 sm=1 tr=0 ts=682cfa17 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=NEAV23lmAAAA:8 a=_Qn17-mUnYZpERhHpVEA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-20_10,2025-05-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 priorityscore=1501 phishscore=0 mlxscore=0
 lowpriorityscore=0 mlxlogscore=999 bulkscore=0 spamscore=0 adultscore=0
 malwarescore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505200177

On 5/20/25 6:42 PM, Pengyu Luo wrote:
> The OnePlus Pad Pro is an Android tablet based on the Qualcomm SM8650
> platform. Its device codename is "caihong". This patch adds an initial
> devicetree for basic functionality.
> 
> Currently working components include:
> - Backlight
> - Bluetooth
> - Battery charging (up to 5v 0.5a) & reporting via pmic-glink (There
> are many unknown notifications)
> - Display panel ([1])
> - Keyboard (via BT)
> - Power key & volume keys
> - Touchscreen & stylus ([2])
> - USB Type-c port
> - UFS storage
> - Wi-Fi
> 
> The following components are currently non-functional:
> - Audio
> - Cameras
> - Charging pump (dual sc8547)
> - Keyboard (via pogo pin)
> - Stylus wireless charger (cps8601)
> - UCSI over GLINK (PPM init fails)
> 
> [1]: The panel is a dual-DSI, dual-DSC display that requires setting
>      'slice_per_pkt = 2' in the DPU configuration. The panel driver
>      will be submitted separately later.
> [2]: Touchscreen/stylus driver available at:
>      https://github.com/OnePlusOSS/android_kernel_modules_and_devicetree_oneplus_sm8650/blob/oneplus/sm8650_v_15.0.0_pad_pro/vendor/oplus/kernel/touchpanel/oplus_touchscreen_v2/Novatek/NT36532_noflash/nvt_drivers_nt36532_noflash.c
>      The downstream driver has been ported and tested locally, but
>      requires cleanup, it may be submitted separately later.

I have a Lenovo Tab P11 with a nt36523w (-23, not -32) for which I have once
poked at the driver for.. I see the driver you posted mentions -23 as well,
please keep me in the loop if you're going to upstream it

[...]

> +		/*
> +		 * This memory region is required to initialize the backlight
> +		 * and display for bootloader. Normally, this region is not
> +		 * needed. However, due to limitations in the current mainline
> +		 * KTZ8866 driver, dual backlight ICs cannot be properly
> +		 * initialized.
> +		 *
> +		 * A workaround involving secondary registration was proposed,
> +		 * but rejected by reviewers. This reserved region is kept as
> +		 * a temporary solution until a proper initialization method
> +		 * that satisfies upstream requirements is found.
> +		 */
> +		splash_region {
> +			reg = <0 0xd5100000 0 0x2b00000>;
> +			no-map;
> +		};

I assume this means "if the bootloader sees /reserved-memory/splash_region,
it keeps the display online" - let's not do that, as underscores are not
allowed in node names (kernel coding style, not dt syntax)

> +	};
> +
> +	/* No Modem */
> +	smp2p-modem {
> +		status = "disabled";
> +	};

There shouldn't be any harm in keeping this node enabled

[...]

> +
> +	vph_pwr: vph-pwr-regulator {
> +		compatible = "regulator-fixed";
> +
> +		regulator-name = "vph_pwr";
> +		regulator-min-microvolt = <3700000>;
> +		regulator-max-microvolt = <3700000>;
> +
> +		regulator-always-on;
> +		regulator-boot-on;
> +	};
> +
> +	wcn7850-pmu {
> +		compatible = "qcom,wcn7850-pmu";
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&wlan_en>, <&bt_default>;

property-n
property-names

please

[...]

> +&i2c_hub_0 {
> +	clock-frequency = <400000>;
> +
> +	status = "okay";
> +
> +	/* sc8547-charger-secondary@6F */
> +};
> +
> +&i2c_hub_2 {
> +	clock-frequency = <400000>;
> +
> +	status = "okay";
> +
> +	/* sc8547-charger-primary@6F */
> +};
> +
> +&i2c_hub_3 {
> +	status = "okay";
> +
> +	/* pencil-wireless-charger-cps8601@41 */
> +};
> +
> +&i2c_hub_4 {
> +	clock-frequency = <400000>;
> +
> +	status = "okay";
> +
> +	/* awinic,aw88261_smartpa @34,35,37 */

We have drivers for these!

sound/soc/codecs/aw88261.c

> +};
> +
> +&i2c_hub_7 {
> +	clock-frequency = <400000>;
> +
> +	status = "okay";
> +
> +	/* awinic,aw88261_smartpa @34,35,37 */
> +};
> +
> +&i2c2 {
> +	status = "okay";
> +
> +	/* secondary kinetic,ktz8866@11 */

You can describe it, the driver sets some nonzero default brightness

Konrad

