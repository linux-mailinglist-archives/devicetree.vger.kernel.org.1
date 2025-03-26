Return-Path: <devicetree+bounces-161022-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6C2A71DA7
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 18:48:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 300223AC51E
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 17:42:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0241723F419;
	Wed, 26 Mar 2025 17:42:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nOTC9XqJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342C223F292
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 17:42:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743010925; cv=none; b=e7z7R1i+AKSx4HQnAiPMdavkahPHRyBQzC/9AbHej4ns/wMKbSPf85O1kRHnj/XtEw1kDK8wVLqH1Gd1aUrnl6jRZz9URRCHcb9zf5ydWdY5O+78yJTybPasU0zAlEhePjVDxUXAy3b53m7DD/jWXPITsUkztpi9WpoWbDv+BLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743010925; c=relaxed/simple;
	bh=xy/2rzsOh+trLOCmWnJsm2IkbvXJ8ayuSunPg+ApXo0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EBo6M7ywVlBJ8f+nq46j8jXqq8konEvwjzp9EHfHyg4NVjnAYmt6AoxfqNtI3h94bvIQEhQUWG1foSfZxJM2lgz+WArRe/Vl2J4hpbbAL5wUwvI/VfpQYOd2uV//Rt6dLc9nO/rurbpcPOTGMhhYh13VjnNlWn1Zuhf1h7uH3+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nOTC9XqJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52QF41dO012829
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 17:42:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=1whyNVe02s5jo4EwpJiW9RED
	EE8MpWJ5TWtU7vf6DK8=; b=nOTC9XqJoGDPy5O8S+vITzRqXgvTtvRlw6JuhcUf
	bB/ITLmQsQhCl5HGEWRKstUoJvkfOFqRQmDN8XlI/6Piu0lubYL8cD9NjvBKikBK
	nIX72UOgzoQwRZhCppGt/BhRYqvEw5+Gm9PGgLIpZiURaz+xhTHlmK+VX3RxzwwV
	CjApa+671YwHukps6Obk5nN5mx93SQKNm4sugSnWce8I+a8S0zqlzjTel2uyd+Fs
	uvJQ3XCJbsChw2f9CutrHaTlYelQmemMaybabHX68xid7p2yfLgsdtDk5khxQxer
	SOuPAEYJ00i9rzzvMF2sTXIa1AuXtz2eV5CZb4etcGsLrQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45kyr9kn1e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 17:42:02 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c593ce5e2eso29609185a.3
        for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 10:42:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743010922; x=1743615722;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1whyNVe02s5jo4EwpJiW9REDEE8MpWJ5TWtU7vf6DK8=;
        b=G2p437Xdv4SWVKVDJ7cCNcrCPu/NpWNzcGbEHSu0hStwWqbDMWIKcIb2BK+If4CH1+
         cbHjydP4s5l9XzrlwXe47YatfUoWBHAlIibX516TasL+5lnlA4xfny5nbT4Aj0t/zX3z
         60Cp9DaRq9ppRcag4IY2gWM4+g0shl6ivbxHSOIvM5RlCZXxfP18Dq6625eK+5avL8zE
         lubixGMwbcIiFfdwfYMXQesKgzrSEtQF5Tt1A0w3xzeUujEESpJHXBOZgg8c4qjyUwVF
         0N3HmM8lrdjZKsRWAJGDs3Ndk1UBKRXOtJ+EUlydPgNYjsWFTKDdUquLua0dFl5eHL+R
         YZ3g==
X-Forwarded-Encrypted: i=1; AJvYcCX/AGJ80TWM80qxiDylE/dcykSpSdsN5Bf6wz6UlsKQUC+mAVGJjURqyxfUat+C/d4yX1XUqe7UNbgL@vger.kernel.org
X-Gm-Message-State: AOJu0YxFMAP7xOjT/+tUvNhUxktP00A06agVsbh8+SuRWR9USkFFV07M
	KEo5Ha6TkYuOkdtmlerPu5pcr7i62mbF7xQXsHhR4WGF8Yo/R890J0tLT+P5bimhEgqzqYZPDrj
	ecLRcaMVkpq+pA1uoXdKpgJKqS3Iz8kuKcEG0DIgu372YNFaPVobBY42A6ymP
X-Gm-Gg: ASbGncu2D3/e2ZzUVMTWbeYKt15y3W5BKa8Rg2OoPwRTHhMzqV16r//boCs6ka3DQSJ
	QvvHWW/3G1lcxySq0s659A6Rl/2d5oXGnzMvEfXK8GIXyUzzJdnWPxuw81LzJTG9fZx0RDl6dxg
	VJ2uJOQaRgPmzWG4JqufyrlsGwssVi83yWazlYD1WH8o3Pq9HdGGxe9pgmKeKGG5nZ4Pv+M4wMz
	KUVJW5NpNIZhe+xpifP23BvxTbZYv8pfdjJkx9CC1Qkh5IiMEq40LeNrYNJWQYa5n4Y0EMBddSp
	/hOEURek5dpwWHXc/G9+ed6aNEpeBp7RPLnSLGJrBXh6QwHZwe/53mzw1YhtSJN/GRAgpIcyZwC
	2fqo=
X-Received: by 2002:a05:620a:1a03:b0:7c0:a3bd:a78a with SMTP id af79cd13be357-7c5eda61631mr71560285a.41.1743010922105;
        Wed, 26 Mar 2025 10:42:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEGHUNfQ1l6wNqR9JpGezxG7QsvvjX37Da6MaMIZlLcrxsIc64vsgldMpySbZGofIgFHJRWfQ==
X-Received: by 2002:a05:620a:1a03:b0:7c0:a3bd:a78a with SMTP id af79cd13be357-7c5eda61631mr71556885a.41.1743010921656;
        Wed, 26 Mar 2025 10:42:01 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ad64fbcffsm1849438e87.119.2025.03.26.10.41.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Mar 2025 10:42:00 -0700 (PDT)
Date: Wed, 26 Mar 2025 19:41:57 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
Cc: Georgi Djakov <djakov@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Odelu Kukatla <quic_okukatla@quicinc.com>,
        Mike Tipton <quic_mdtipton@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Jeff Johnson <jeff.johnson@oss.qualcomm.com>,
        Sibi Sankar <quic_sibis@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH V10 6/7] arm64: dts: qcom: sa8775p: add EPSS l3
 interconnect provider
Message-ID: <qcvz3t55bu5zok5up5nxk3mxstzkcpmdavsm6t26pe5dwxyj2a@p6nkxe2fhvvv>
References: <20250324183203.30127-1-quic_rlaggysh@quicinc.com>
 <20250324183203.30127-7-quic_rlaggysh@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250324183203.30127-7-quic_rlaggysh@quicinc.com>
X-Proofpoint-GUID: Y7O8pVdInfvV5JjEUEw0S6oDL9_clkqh
X-Authority-Analysis: v=2.4 cv=UblRSLSN c=1 sm=1 tr=0 ts=67e43c6a cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=TedthiWShpgNw5UeFFIA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: Y7O8pVdInfvV5JjEUEw0S6oDL9_clkqh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-26_08,2025-03-26_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 suspectscore=0 priorityscore=1501 phishscore=0 mlxscore=0 impostorscore=0
 adultscore=0 clxscore=1015 mlxlogscore=967 bulkscore=0 malwarescore=0
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503260109

On Mon, Mar 24, 2025 at 06:32:02PM +0000, Raviteja Laggyshetty wrote:
> Add Epoch Subsystem (EPSS) L3 interconnect provider node on SA8775P
> SoCs. L3 instances on this SoC are same as SM8250 and SC7280 SoCs.
> These SoCs use EPSS_L3_PERF register instead of REG_L3_VOTE register for
> programming the perf level. This is taken care in the data associated
> with the target specific compatible. Since, the HW is same in the all
> SoCs with EPSS support, using the same generic compatible for all.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

