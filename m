Return-Path: <devicetree+bounces-161011-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 77365A71D1E
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 18:28:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E9CFD7A2E5C
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 17:27:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A539219313;
	Wed, 26 Mar 2025 17:28:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="deIMP7iv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF8D7219302
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 17:28:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743010090; cv=none; b=RTpS8ok6xNQX1ffLTpMk7WXzxAurhwPQgsSN+xlxUNxCgsd08EJhLqBTmE0OYJn8Fn0eg995h6yYzWup6LgFVRZmmm8Tlb+JpCvNjCzHbOvCv+EFaa7p1gvE55fPWASAFPW4/qfTb08UzdIGfuibr083c/F6X31Gac+OOKuBORg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743010090; c=relaxed/simple;
	bh=VHUxls8VIPB+bwgE0jcP6Wo7v6VkMcBSBygTBg1uTyw=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VtQ2x9jALSYB3fhUHLuU1ShfFja3JYFmuE3iy5egWxuYRkwnPDFvETEEf1SdnOHHuY+RYPzvalVeatWJmIH9zz/UE6EoBh053CnKUHZV09JqLSO2Rw1rpvHOb/W1Gi1MjZxy0Bf6UtEh0mm+pkKnrOwGk32ZIiBEvVWtH35G0lI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=deIMP7iv; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52QFCuvL006076
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 17:28:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=0S3hgXPJr+8ikf9pw45un5xz
	S+GPSbI/uN9U7waQCZs=; b=deIMP7ivGz6i3cG/Bje38eWjgxEtT9oTt0J7Ggv4
	GQyVBqps3VDxYlfitR6NEw1ZctTEtALdS9N0tf7OHmxRhErEkFaGhwcg41JAffj4
	ZfdsZ7nq5YLDa/LxDDvSkdWMva6nOB1NJ07ox3Y2Iba8iKrgep0cAAeFp5WNUSwt
	8160x2RHu9iOK96MuboheVkWGB1dtleXILCIXvEJ+kW/joj8QquImgGrlH4lUqEV
	lf+oN7XLPB88JMHVMYewaTgxvjYkrqmKjwqaxbNgJG5bgogxmv7q+4jYIGp1e9l3
	nlLv3aSU9EkU2aAhQafeBa1s8K15/5souLKqbSFya0v5Sg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45manj25kb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 17:28:07 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5ba3b91b1so23595485a.0
        for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 10:28:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743010087; x=1743614887;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0S3hgXPJr+8ikf9pw45un5xzS+GPSbI/uN9U7waQCZs=;
        b=ozltHYHb9B6gQXVluEsY0358QUCrV6qZrDHlcNkOnuwN8xlYPoiXmDQEI57vRQRJQX
         /kWBOxMb+Sp/uSYYRrage1nTXYYBFpdwrBvvl/MsfKuVDD577sZ4z+a5GE8v1lyVnZXv
         UC2tIuXGDzSZVX7+eRXnQLHlHoAp/48cAPfVkF3ZaXengW62Ja6o+v20Fz3QR/w2OhYY
         umA16qeGpKwAkyo5xQ/Q+QkJJRFWfSqUp9mHuivRw9sY7Mvs1E4n5lT6BvhfAw46aDhU
         69NBeJm5r0GPQFtFajgDkVwb0HCREFZyYYbrWohSYZXk1nrEtBwX0lSzUo0c+VijSI3C
         MVeA==
X-Forwarded-Encrypted: i=1; AJvYcCXqpjCUaY4IKn93c7U85TZ8RxHxlfhUaZueudkIqLO7pO4NHNgiZIaa98pqV5A9Q3RHYoPdlfoKv+bn@vger.kernel.org
X-Gm-Message-State: AOJu0YyMGHVnrj37Ij//gPcZf/IZrasFH8xsuFNYxKXckdgtXBAJIzNv
	KxMc3qgF81yt07NntiU+FOK45CikPLUaDVoFQVHtjVFi1V77GWEjM0W0sbid+PFUjBVfGvCiSlU
	T6mWIFa215UCK9KYfNHoC5W1nW85iuwvAuOwXN3uxzEXJ3+rGwbttU5CssLixLTNa/Fz6
X-Gm-Gg: ASbGncu2jsV7+yNIVSUcgq6z5PN1M2U8LHK1ZO+pqu7KcfLr/RPbXnD9P/VIRe/nEa1
	ufWGtEzuIt6LqYZeNALg7abelq9OTWqy7sN+qeUZ1khVat2vUUBoH2LJL3dMNMPMJ4jFSiRucxF
	sY9yeT+d8s691fNhkEMzBy3arENcNCxdslfB4ebgleKCH3OMXPNjJqSI1T+PHLzjf353NwRoqgx
	Lp9e5BsoMS1fQFaGtcfttt9tErNPZJfrFx5GVCcOvFbPOdbu2IaUr/A3rPWOHIO+4xlyVVpMJp2
	TUxITlKztqaXU03Po4XPT+Fv0uvXkHrlRyz+HThjTNR8VIgrlQI=
X-Received: by 2002:a05:620a:6193:b0:7b6:cb3c:cb81 with SMTP id af79cd13be357-7c5e49344bbmr753060285a.18.1743010086574;
        Wed, 26 Mar 2025 10:28:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHiNZ2bjssGBqVdwGizyv1ZkwRj4Svqzyb5jA/H7jjsZneLjonq8dH3M8N6XH64FI8vKcNGzQ==
X-Received: by 2002:a05:620a:6193:b0:7b6:cb3c:cb81 with SMTP id af79cd13be357-7c5e49344bbmr753055385a.18.1743010086060;
        Wed, 26 Mar 2025 10:28:06 -0700 (PDT)
Received: from trex (144.red-79-144-186.dynamicip.rima-tde.net. [79.144.186.144])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d82dedea3sm10144635e9.3.2025.03.26.10.28.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Mar 2025 10:28:05 -0700 (PDT)
From: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>
X-Google-Original-From: Jorge Ramirez <JorgeRamirez-Ortiz>
Date: Wed, 26 Mar 2025 18:28:00 +0100
To: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@oss.qualcomm.com, Mohammad Rafi Shaik <quic_mohs@quicinc.com>
Subject: Re: [PATCH v1 4/8] arm64: dts: qcom: qcs6490-rb3gen2: add WSA8830
 speakers amplifier
Message-ID: <Z+Q5IM0Qj8J5xZUm@trex>
References: <20250317054151.6095-1-quic_pkumpatl@quicinc.com>
 <20250317054151.6095-5-quic_pkumpatl@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250317054151.6095-5-quic_pkumpatl@quicinc.com>
X-Proofpoint-GUID: kksGa6bNINCd52rY81qy0eUS5zCiO__Z
X-Proofpoint-ORIG-GUID: kksGa6bNINCd52rY81qy0eUS5zCiO__Z
X-Authority-Analysis: v=2.4 cv=KvJN2XWN c=1 sm=1 tr=0 ts=67e43927 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=LfYPmjDHqwmh8J85qtw9fw==:17 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=hICUP55FaW_hIgXUPesA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-26_08,2025-03-26_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxlogscore=782
 malwarescore=0 priorityscore=1501 clxscore=1015 mlxscore=0 spamscore=0
 impostorscore=0 suspectscore=0 phishscore=0 lowpriorityscore=0
 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503260107

On 17/03/25 11:11:47, Prasad Kumpatla wrote:
> From: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
> 
> Add nodes for WSA8830 speakers amplifier on qcs6490-rb3gen2 board.
> 
> Signed-off-by: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
> Co-developed-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
> Signed-off-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 27 ++++++++++++++++++++
>  1 file changed, 27 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> index 23dea375c213..a1a3df77ad57 100644
> --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> @@ -870,6 +870,33 @@ &sdhc_2 {
>  	status = "okay";
>  };
>  
> +&swr2 {
> +	qcom,din-ports = <0>;
> +	qcom,dout-ports = <8>;

are these number of ports correct? from my unit tests, 8 seems to be out
of bounds (soundwire probe error)

> +
> +	left_spkr: speaker@0,1 {
> +		compatible = "sdw10217020200";
> +		reg = <0 1>;
> +		powerdown-gpios = <&tlmm 158 GPIO_ACTIVE_LOW>;
> +		#sound-dai-cells = <0>;
> +		sound-name-prefix = "SpkrLeft";
> +		#thermal-sensor-cells = <0>;
> +		vdd-supply = <&vreg_l18b_1p8>;
> +		qcom,port-mapping = <1 2 3 7>;
> +	};
> +
> +	right_spkr: speaker@0,2 {
> +		compatible = "sdw10217020200";
> +		reg = <0 2>;
> +		powerdown-gpios = <&tlmm 158 GPIO_ACTIVE_LOW>;
> +		#sound-dai-cells = <0>;
> +		sound-name-prefix = "SpkrRight";
> +		#thermal-sensor-cells = <0>;
> +		vdd-supply = <&vreg_l18b_1p8>;
> +		qcom,port-mapping = <4 5 6 8>;
> +	};
> +};
> +

also, should we enable the soundwire controller?

>  &tlmm {
>  	gpio-reserved-ranges = <32 2>, /* ADSP */
>  			       <48 4>; /* NFC */
> -- 
> 2.34.1
> 

