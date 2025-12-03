Return-Path: <devicetree+bounces-243980-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 28001C9ED30
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 12:15:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D93604E064A
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 11:15:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 114742F3C37;
	Wed,  3 Dec 2025 11:15:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QQCgPWQv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="A9uijCDO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 028082F3C19
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 11:15:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764760508; cv=none; b=k+OYQpRtXqh3/8xv/A0jUaxIX8m+iiiRkZN3CaAFi8p4rIg6BgcI0SNDmRSxg7mDQz/hfgHF0E5Gs41/OBioSflKSjrdCwYAPaqRjwm4cCZRdW88+EvaNt2gU+YbWxwgZdU6TSntBjMKcv2BsEA0VxmHXbdt2bEcFYn+DsB5Syc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764760508; c=relaxed/simple;
	bh=eP3tDoyJEn0q53WmiKkuekFIADve/lQCRcyXrA578eE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dfyojO25gucdWU4D/u+sQApKTB2k5uRBhdqguJgRjVTHvvu4sJ2LnSbAHCJZa+vcbJZfi29HKy1ibxLjGirKgsp6MUmWbMDLb8qggFBG7ChsDrnIEAfreMefMOaUQYOCCyeDO+XKVtiqX3aPxNYUgSa922J1ovbADQ02QG6z42g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QQCgPWQv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=A9uijCDO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B3B4h9n2626925
	for <devicetree@vger.kernel.org>; Wed, 3 Dec 2025 11:15:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Sx0Sxi7RaZ5r/OLiymcootGTCfaloJHP1I/EOtGg0NM=; b=QQCgPWQvik8a3OvJ
	zv2UkH1ULms9JrlI0S6j30qdHpunRKda3yT5RSVV4gowcy0NTV81vpgpP6U+7J5D
	dN4wtUgJcTL71l1Y7ZEH+ZEP3ffBfBfgT8kdGSIXBSDF3R3QDoWblZGKSQ/FdJ4G
	MqSGs5ow2zzlIXkBCl7cj/eG/EVlzwjRpu40ljuwlHEisFF899HKWa72naXQHXD9
	Qr6swy0T67BHBTOnpTmqJFdAp2nRTH31cnVoa+gb7GJ5nHbkC4p8qnpgGlq5hfF8
	f7RzjZv+d9pFvQytAu02QNhuvGUcLbHhPrUgTwKeoo03e67DQxff+/vjYZtUfMHH
	4MliyQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4atm1280vf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 11:15:04 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ee05927208so18656071cf.1
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 03:15:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764760504; x=1765365304; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Sx0Sxi7RaZ5r/OLiymcootGTCfaloJHP1I/EOtGg0NM=;
        b=A9uijCDObmxJsyhlGMFfVHNWQQV5vfqwOmBXIx8Xr+wPy7JS4maUWj9h5ulooxhOLk
         aebFCwI/uQ/cNhePoHGarLimKKZjfzYvaFapVi18hjNEeS/sRmX+zYUkuBuce/IpS63d
         rm5gKrb3uPu/sbw/HCFCXBwZtHA6qwYyrOz1v7eMxNE/Nehxb/SMMOoZuGUpQFGSwQzx
         uzDuTFiKIL4v4G2Qy8PnYMovKMlVQD2uFxcY8yYDOjAP1PyeAUJlnmD7EH3MT3xxze2D
         sszJJ0prQvLSXzfKIzlwohSWX3UUsGnZz9WdJX0C5cdv3EK2xxtXdZu1sP8VLI6NbKU+
         i/MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764760504; x=1765365304;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Sx0Sxi7RaZ5r/OLiymcootGTCfaloJHP1I/EOtGg0NM=;
        b=JaiuInvHqOVOhaiVFIdTbF5S3q3RnDsa07ucBggpGQm+VKJzocTiXW4e+strtCrOk3
         KNbkk87nqad+GuFJMzgcARlgm2eYbjwOtO/nXdd9/ih9rbu3g8qoj3GWgSTIFMu/GvHu
         x0m05Dv1xlUpQT/ca1Qhz6SfoQp+k3luWJxpeqRH+ygH0Ucm32gZA6iLMUh4bgPWB3en
         zp6AyrHAFrl9OaPBQ1S6WUnS+pILOE2JSQjXr/VvtNRMpNf+GTwl7Vy9ShgREbIQ+Hsa
         i9lgz2MD86PJFTG6RODYaL+uQcT8n39J7PEQyEVS2QcZElqA39aOlbhvsojiuUitTy9d
         5F1w==
X-Forwarded-Encrypted: i=1; AJvYcCVUYYjnSoOOEyCvUd13/YS57Sy21Y9ki76ARW4POjBy3PmF3qNZeTmKZW+9vKLP5xBX3p4Gn7QNC8C3@vger.kernel.org
X-Gm-Message-State: AOJu0YwpEPbo+JMZGaGOWtAnKopqv0XCKlKnJgO2nv3zSY3ZSbCDxhAU
	ydYZHxqib5LtyuxO9c4ZitvCczVJqG2tbcRHPR7Sfsw/+2ka1iid2jJDUQEj/u1fAVdrgv2WVTG
	wwPgV8MSDx56zOllmzA6Ghc1f7/WHmSY3zXfoVioKnIHb9mRdin/MY7aOUAyLACts
X-Gm-Gg: ASbGncuh2XZzch+EfTt/hOc/NJ9ZHJUcZsmgDvAwFRbLZ/Mjzc2As+ZCllODxZ29BNp
	L5fwpGzHwY6vUimKKFa3PObYqGi/jsw0DEpjE5GAunEpmk6kQkBF/b5gAOYa4AFz3QGkMskW1Sm
	0LmobMzptLQRm6DgwHFOeknxdFGsqNnnXDpE1p0UNjyyGkMDXFSbYmStiD+x8Q9nE1h+rfeGQGX
	vU3LPM5yveVKCfOiS+8HndQxlAxIisrcWaP5Sven+TZV2BJ+XJ7WOCP2loqiQdagi2ZtwmV2QVn
	pDLKp6nI2+BV8DjyHWau78q0xU7geySoG6c37kh/ZTmyCcgOPLfHg+dXl1/PlUdgxzlXC+yJ90j
	kgBBOYLnGgCq1C6IYvAq9gbCJzb9CEpUucOc/jM85pfG5M7g7IQQPOBRGj09HOfJK5w==
X-Received: by 2002:ac8:7f54:0:b0:4ee:1588:6186 with SMTP id d75a77b69052e-4f0176844ddmr17308031cf.11.1764760504000;
        Wed, 03 Dec 2025 03:15:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGuDgbijKKd62ii+mc6Bi9vpnrCyOLqg//ZpBlxTts37lCeH5/k75isDDIk/xGo92WQ15EXpw==
X-Received: by 2002:ac8:7f54:0:b0:4ee:1588:6186 with SMTP id d75a77b69052e-4f0176844ddmr17307571cf.11.1764760503486;
        Wed, 03 Dec 2025 03:15:03 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b76f59aed2esm1781866066b.42.2025.12.03.03.15.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Dec 2025 03:15:02 -0800 (PST)
Message-ID: <fe15827d-c15c-4b4e-973e-3cc379714467@oss.qualcomm.com>
Date: Wed, 3 Dec 2025 12:15:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] phy: qualcomm: phy-qcom-eusb2-repeater: Add squelch
 detect param update
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Luca Weiss
 <luca.weiss@fairphone.com>,
        Abel Vesa <abel.vesa@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Pengyu Luo <mitltlatltl@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251203083629.2395451-1-krishna.kurapati@oss.qualcomm.com>
 <20251203083629.2395451-3-krishna.kurapati@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251203083629.2395451-3-krishna.kurapati@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAzMDA4OSBTYWx0ZWRfX8K5pZYYDzQPh
 xNGCkk756KIPQpVtHyIxEplXRMBuOt+DmueytL2NEdOcqxL935dWQ64ro6qqCSX/WnI/YIIlBvV
 D91abpbY8qHnVuQWYL4lwpawvdkkFQoewqFVRKfyWcS5uJKhkM6R6H2DG81G++Wz2vQnAPzo5RJ
 ctv7GNoaZDvbgJ2+LViakJNAq9l1r9gun7sVI2pNKA/Xl0o6E8jrpOtoL9LK54pT41VRJ48swY4
 H2GF3Q4yi7KnBydvk674WL4+ip2pDH2cE6CP58tEhyOk5c0CQ8+eBW+AFKvzuUX5vCEq03SfEqh
 StHHDNEafb+47inN11FT2lkLvGY0FFtG2YPEQO5gJKsgfqlfuCRxcuJnFRX0OyfuXGBtQ7yQmbb
 bCzPjiMfz9w9OXq6GqWG0a5eXK57Jg==
X-Authority-Analysis: v=2.4 cv=JY6xbEKV c=1 sm=1 tr=0 ts=69301bb8 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=ZrT6FAlEKn3Pr7If_u8A:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: kHFwRXggVKXq8p4V18-hv184k8_l3XwM
X-Proofpoint-ORIG-GUID: kHFwRXggVKXq8p4V18-hv184k8_l3XwM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-02_01,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 impostorscore=0 suspectscore=0 priorityscore=1501
 malwarescore=0 bulkscore=0 lowpriorityscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512030089

On 12/3/25 9:36 AM, Krishna Kurapati wrote:
> Add support for overriding Squelch Detect parameter.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---

[...]

>  struct eusb2_repeater_init_tbl_reg {
>  	unsigned int reg;
>  	unsigned int value;
> @@ -120,7 +131,9 @@ static int eusb2_repeater_init(struct phy *phy)
>  	struct regmap *regmap = rptr->regmap;
>  	u32 base = rptr->base;
>  	u32 poll_val;
> +	s32 dt_val;
>  	int ret;
> +	int i;
>  	u8 val;
>  
>  	ret = regulator_bulk_enable(rptr->cfg->num_vregs, rptr->vregs);
> @@ -147,6 +160,14 @@ static int eusb2_repeater_init(struct phy *phy)
>  	if (!of_property_read_u8(np, "qcom,tune-res-fsdif", &val))
>  		regmap_write(regmap, base + EUSB2_TUNE_RES_FSDIF, val);
>  
> +	if (!of_property_read_s32(np, "qcom,squelch-detector-bp", &dt_val)) {
> +		for (i = 0; i < 8; i++) {
> +			if (squelch_detector[i] == dt_val)
> +				val = i;
> +		}
> +		regmap_write(regmap, base + EUSB2_TUNE_SQUELCH_U, val);


How about:

if (!of_property..) {
	for (i = 0; i < ARRAY_SIZE(squelch_detector); i++) {
		if (squelch_detector[i] == dt_val) {
			regmap_write()
			break;
		}
	}
}

We could also validate the value (if none found but property present, error
out), but the dt checker already lists all the available values so that may
not be necessary

Konrad

