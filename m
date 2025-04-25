Return-Path: <devicetree+bounces-171090-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F4A2A9D2FB
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 22:29:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AAEB246630B
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 20:29:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCB8D221DA3;
	Fri, 25 Apr 2025 20:29:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jL9cDEwV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323361917FB
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 20:29:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745612986; cv=none; b=ptQtjSHmDOW2Ww96tdwxhU2i+jCHy5YXd1Pfb/wSNwvInziE6HFtIGcn/mFe3w8vUwcZuVkUW6hZqGjuhhMqzoFFfMe5Af4+EY4XpWxJY0mngFIip2fHvRQkeaSN3yaFje+A2y2xjNcerQLSkv0cxeaE0s9W2YCBLnL8SxxTBac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745612986; c=relaxed/simple;
	bh=HQOXavJqDDNcxestJosnarQtEyp/wYkfQfX7kBoRVfM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HwAxNteWUR9bkMMUkxJ/pPMPH1tCRV7/R651rNP5A2nsfclaxIzIUaxVY65urDKJDJX51utrFQhkEDbGqhAGQkLajg5ESrMrlYwcQbsSyWwIahHLwWCL5sELn4oHLKgvAeOjp4iSIAu41Qtm3+ZBXoBTNsYBeaVBdJ8Q0cvUERk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jL9cDEwV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53PGK1tl021802
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 20:29:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QQBvshjoO46a+foT6NAfUQZSlYX8diC7N7dcT1bHR/0=; b=jL9cDEwV0BlHZgDH
	/q71xNpEJxvQh0SixNDnCh+qHVx/9qXo/+S4u1cY8wnYLsLp124ZOnAKKue2YwVN
	beA14LgEXdy4y7OpubDcB90M8GQ2tQHX2FIN54Ze2/mPYW4GmT7SI5OFYLzF3ha4
	2nfHb9eR6R7KNJ+AjFyHXCerrs3oF6w6B0jeytKD6GskzKhjT2xvEFtcA+NYkCV+
	tHmmaJYKZ3xiL8dsbPrJqGHIJwtPNIsdbF7uZIMib2mKDZKl8ZDr4N2tWeyboD2G
	bznqpu5I5aUBPy0RQZMLqc2xNojcc+QeM6NvcOeidfUVWQnJ5HoXf78AgSMl/+2i
	MBnK3A==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh5j93j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 20:29:43 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c545ac340aso33104585a.1
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 13:29:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745612983; x=1746217783;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QQBvshjoO46a+foT6NAfUQZSlYX8diC7N7dcT1bHR/0=;
        b=QaqTsLmVeHgV1JZZ6DwNsFue9B+uTYfTPO6TYmMHfn/RM6vYvYUbMb0tApOektH/hf
         99OKnHyykzcV7yP8F+MGBQE3w+aTq8CJSqDpNee4UMFzUqUUV3k6N0iQU7q571ZDodO8
         vVe4yhp3fdxkZdjanoQ3xB8NU5M30/musL9P/xAjVX0S+tFNYxOqvRKaSTD1jhssjsLL
         zgoPFh+NXL9D2BkUkIMQuWMmwF74Czk7WC+YR1TtOQdHym0A7xw3/uZYwYWwVhLW/CW2
         WTZPLSJUjPnTp1kLRe0o9wq6xQG0iLwxdQYT2EGefOLTtJaqca7l1H6HMBX0f6B+9t3h
         1jLg==
X-Forwarded-Encrypted: i=1; AJvYcCV8c5fjZf5GRsHk5Z8iOLASiFb/a3qCuhZtw/yW5t8F0echmY4AjX2eJ8Bijx2t4cfbaAlgxhKs3tF8@vger.kernel.org
X-Gm-Message-State: AOJu0YyK2P6kXUgmjCoZg8z0k/KLiLs2sFf+9TTrArcBT+l7MWkwZwrf
	kbUDSJDzIXXwCZ1gXOIHlGPeqoqqxzS/V9vJNhcO7i9ItNqD5ZlNShTGfdNPCmQLi8PgeIH7UeR
	n/tmDbCkQW45YhuIpgSoEjxXxmoZ3sziwqWek9cYnmPtZ00n1JVJ5TJKFUU6a
X-Gm-Gg: ASbGncvyHfjZ13fK5Rfgg4A+J/AyzeOPZD2dYK3hnmq5l95Up6OhTRn4Jw4OSpa2zgG
	Ym+5WgS59x/yq4ZinrQCxlE3lRHR+SrxrtIXNUsqaaIjojre3kdstvzSDylrbkK9gu9SHMb6Dvc
	MwLUqck4/AYzxu4VI6vFbcBV21sQ51aDKzUT7LcONaIeUUbetcfIatdIFDJJCEC07swjs+GCEqc
	YJuly4Wqgh5XyeLbGmJufHz/RPGESJh3Don8ugzHKEUUqdszINEa962rzZKcAPo1fByisru/vq/
	wrmDIEUkU4HTYQY4sfVQ1YK4yk6ZxGX2Aq4z3EryjMJaXJc52REe85cItZSW0P/Q9sk=
X-Received: by 2002:a05:620a:2907:b0:7c3:e399:3289 with SMTP id af79cd13be357-7c9607027e7mr190060185a.4.1745612983076;
        Fri, 25 Apr 2025 13:29:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFFAGDEdWKjfRDkqRp/Tjoi5DhaLxxMVp2ON8LwC2p+2GTY0B+a8uhwaJcDJ2BW4Q/qkxJNPw==
X-Received: by 2002:a05:620a:2907:b0:7c3:e399:3289 with SMTP id af79cd13be357-7c9607027e7mr190057985a.4.1745612982610;
        Fri, 25 Apr 2025 13:29:42 -0700 (PDT)
Received: from [192.168.65.156] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6eda7a0esm183777266b.163.2025.04.25.13.29.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Apr 2025 13:29:42 -0700 (PDT)
Message-ID: <40aed2f4-ec33-4087-8245-7c4acf861387@oss.qualcomm.com>
Date: Fri, 25 Apr 2025 22:29:39 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V5 6/6] arm64: dts: qcom: ipq9574: add nodes to bring up
 q6
To: Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>,
        andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        quic_mmanikan@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org
Cc: quic_srichara@quicinc.com, vignesh.viswanathan@oss.qualcomm.com
References: <20250417061245.497803-1-gokul.sriram.p@oss.qualcomm.com>
 <20250417061245.497803-7-gokul.sriram.p@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250417061245.497803-7-gokul.sriram.p@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDE0NiBTYWx0ZWRfX9s4LojHvzwIy M6vEwqOpKE5YPRyg93qs3NBm42HU7oy03KGqOBRdh74JrImYC+aCvBD2GtHufdPXjsrjC1pvbNU GItqoRt/DomxEMyq//bBZzwMOMdHdgruz8S+T7vQ3HosoA6l823f+B8jGj81AhLghkXOLU0UqIS
 u20Lbxr2SZ2bNi8vSV0xgMVgeiA8MKxROtO91aVDfdTUuuk83HxMO6tuxpD6tPCYTRfayHe6aJT LRwN9mK5vyXoGPWhzKFo52wkHwbvSL4NihXaZ6Ywye/chNC7qNVGFd+j4Ac+6lEg+vAKwxvXq5w L3yHAjRbrbu3qm/RHBF0c0mhoLJehvYjvXmLCh1vO7qHmGaq7QfMDy7euAOaFfH2o4RZVlvdOr1
 ghpjV9rXGRpyW6a13XWKtomXeqXz1iTCDrfxgqf8/YN3ZWrUa5PxjKxQZ5JyCfav0NKHCEcZ
X-Proofpoint-GUID: vtGrj3cf1aozUH0SQ5lLkc30VNL6ja_h
X-Authority-Analysis: v=2.4 cv=B/S50PtM c=1 sm=1 tr=0 ts=680bf0b7 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=osemwfdWNkGZlHKaPu0A:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: vtGrj3cf1aozUH0SQ5lLkc30VNL6ja_h
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_06,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxlogscore=687
 lowpriorityscore=0 bulkscore=0 impostorscore=0 suspectscore=0 mlxscore=0
 priorityscore=1501 phishscore=0 malwarescore=0 spamscore=0 clxscore=1015
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250146

On 4/17/25 8:12 AM, Gokul Sriram Palanisamy wrote:
> From: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> 
> Enable nodes required for q6 remoteproc bring up.
> 
> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> Signed-off-by: Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>
> ---

[...]

> +		q6v5_wcss: remoteproc@cd00000 {
> +			compatible = "qcom,ipq9574-wcss-sec-pil";
> +			reg = <0x0cd00000 0x4040>;

0x10_000-long

> +			firmware-name = "ath11k/IPQ9574/hw1.0/q6_fw.mbn";
> +			interrupts-extended = <&intc GIC_SPI 325 IRQ_TYPE_EDGE_RISING>,
> +					      <&smp2p_wcss_in 0 IRQ_TYPE_NONE>,
> +					      <&smp2p_wcss_in 1 IRQ_TYPE_NONE>,
> +					      <&smp2p_wcss_in 2 IRQ_TYPE_NONE>,
> +					      <&smp2p_wcss_in 3 IRQ_TYPE_NONE>;
> +			interrupt-names = "wdog",
> +					  "fatal",
> +					  "ready",
> +					  "handover",
> +					  "stop-ack";
> +
> +			qcom,smem-states = <&smp2p_wcss_out 1>,
> +					   <&smp2p_wcss_out 0>;
> +			qcom,smem-state-names = "stop",
> +						"shutdown";
> +			memory-region = <&q6_region>;
> +
> +			glink-edge {
> +				interrupts = <GIC_SPI 321 IRQ_TYPE_EDGE_RISING>;

Shouldn't this be 323?

Konrad

