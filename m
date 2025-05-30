Return-Path: <devicetree+bounces-181756-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA7DAC8C7E
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 12:56:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1E37D7B3F93
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 10:54:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 107E522422A;
	Fri, 30 May 2025 10:56:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BL1kigCT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90FE021C9F9
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 10:56:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748602561; cv=none; b=Nkf5B0x1IwkYCCM+GYKhl5UUlxi5eIbf9W+JaJHRXZ8g7EKbI4/zWKgEg1SUfDXy1WlgWAgfcwL9/KZEPzrzeTCFKyGbFwSXsm4sm1uMos6XYE+I/Akyge9JLzyum8jRiUXn7yXmOg+7Pl9DaAZk9gpMQpVNyHUZDDuiIsTVR0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748602561; c=relaxed/simple;
	bh=whNY3yVCRWOs1BSgLRWZD1ZKuBKGEyxBXuEhTV4AVDE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IpUkXUGPDOMbjE4vOVL3/lDJdnJ+tIe4NseciSsak+eyQ9oKUpN6dMH2K0oD0W+l0uVY0U+TFOc/X4NKgiLaQ3PBRx8KcZ0IimF9R5BCvadKBrwQoz3MRi0oQz4B1/gAslJeCkbOFSxMRdrUlHTLC6dcThvx5PBFqz5NS6TQ03g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BL1kigCT; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54UAKBLZ011635
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 10:55:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1z1t2Z30GL9L8T6xsR59OpWGVjJYpG/IvxPuy7JAA8E=; b=BL1kigCT4uvS+RBL
	+PEnw942ziW+AAXU6nO5vrxC807BjyquQkycSlo9BE/5/e8tvA8h3d76lyUq8HUf
	NMyXRRL6rmkP5txdGQbazF2c1QWPFKnjif+d0Is41uCLSzcEWuagQG8+vZ59AERD
	Gk9W65rhTHqU+YOjVMp7VawEw6D/F8Sq3/rKYFre5Zx14GBxeLZex5xVD/PhU1oV
	+cohbpobIbSxtjanSUx2EKiBL/ZBSEBLcN1krFVACDJzKhMI/Qead2ORaS3pxRWL
	t/R7s2YV4h5wUTjv43YnU52qi27VkdjUDUNPBLiglqtpqUkbvqreGUot+F9rcfNv
	IrXQiQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u6g98st3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 10:55:59 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c5841ae28eso43844985a.1
        for <devicetree@vger.kernel.org>; Fri, 30 May 2025 03:55:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748602558; x=1749207358;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1z1t2Z30GL9L8T6xsR59OpWGVjJYpG/IvxPuy7JAA8E=;
        b=C2w3o+oH37Tw5w5Z5/YEKZrqSaJzScS9TSVENPYt0PqEAD0oG6FleBFy1bTWozBjPn
         u15S8gp0HQGkfUGsQown5Lys+6K+UtabvjXc5oquVzJH8vAl+mzJjEuw9BWZrp/aw6qS
         ZjaCusB8UIECmcduaWV4wfsQCE1shRSCZKD29nGMUxS15q0sa8M6I5rZlA1gAazOdN10
         n2qStEZBAKmMCDc2tWYhwu4vmkjVRdAhfUT6Qe11wGZmNyGjnsnibtW80fxoDEGoJ9Av
         nmMPdeKsJifBxTOvETgPUx0/xNHIdFDRHreSCV33nhl8ydvsCeCW4/EyPc6HQJBN24uJ
         RZUA==
X-Forwarded-Encrypted: i=1; AJvYcCW6c0vcg7vqRb+JCGeAYDPVFlLpWBKq1p730mNB1MSEnaP81HT/3QNottrJDpYMlkP3ykBjBfs3VI+g@vger.kernel.org
X-Gm-Message-State: AOJu0YxJmZ/Bci17T5pQUa1NDQ+w52jqjq+4dCNK2SHHtucwgRY1AJbo
	Aw3QtC0dGfCZ9ZPmjOQxVIKcTadpOpifAfk2OeTQApmx+U7OhcKTjSKNdLvbgMVw8Jy3e/MI5xJ
	alSpZy0auQQbS+R0EX428Z0zGAT/yEefXj+KS3PP4LVwAsEvc+fSfcSfcRAS0t6t3
X-Gm-Gg: ASbGncspmQdyFRt0w9mspyAtuSmikW/vu17Fk53FaYzndoci1BzM+gGH1oUe2thsYoa
	oqjoup2L6Aa6blUQ9J/1Zk+B8FgE5xyI3jxhrs+GXQ8aJUWFG6vzuTxMWexfr+W+k0U80otkA+k
	NJDppEwiIt55EbMbYzmkoZFJ27qPic9D8oVEDVqhE86Xj1hykPaW299+Hu5EUXt+4HsK9Tmz/tn
	lb9m55YoznEOLj7FtX7MU7Zpef5UkgWWIzuED/CqvUKSeKMTHh5y74Q5uTA8PXPEq4ZIVBiS7Xo
	s5fxqCGGOxXOzvZ9jRW3j0oNEr9I/5p1f61UuLuK5iFgCPtB4rlkpRB1bl3+DNEY8GKT5CVoNN4
	7
X-Received: by 2002:a05:620a:1917:b0:7c5:8ece:8b56 with SMTP id af79cd13be357-7d0a1fbbf12mr144603885a.4.1748602558565;
        Fri, 30 May 2025 03:55:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEJbVbPBnzxBc1ipfoPAXrfEh5Qfo2HTeThK9slvahJ8kJvoNGDfCAapCiPVTOYKSDB2waJKA==
X-Received: by 2002:a05:620a:1917:b0:7c5:8ece:8b56 with SMTP id af79cd13be357-7d0a1fbbf12mr144601985a.4.1748602558042;
        Fri, 30 May 2025 03:55:58 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6056716beeesm1435854a12.80.2025.05.30.03.55.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 May 2025 03:55:57 -0700 (PDT)
Message-ID: <2503abb0-8ea4-4d9e-8569-3ee295dce37c@oss.qualcomm.com>
Date: Fri, 30 May 2025 12:55:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 4/4] arm64: dts: qcom: Add support for qcs9075
 IQ-9075-EVK
To: Wasim Nazir <quic_wasimn@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@quicinc.com,
        kernel@oss.qualcomm.com, Rakesh Kota <quic_kotarake@quicinc.com>,
        Sayali Lokhande <quic_sayalil@quicinc.com>
References: <20250530092850.631831-1-quic_wasimn@quicinc.com>
 <20250530092850.631831-5-quic_wasimn@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250530092850.631831-5-quic_wasimn@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=d4b1yQjE c=1 sm=1 tr=0 ts=68398ebf cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=zgs5Lv6q46mbt4vC44UA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: z-wQiq4SEs5hpFLNiyXDY5WAj0UGHFvk
X-Proofpoint-GUID: z-wQiq4SEs5hpFLNiyXDY5WAj0UGHFvk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTMwMDA5MyBTYWx0ZWRfXwGFQ0h8UyQM1
 /NKn+iwMlrGlsqh4V+/mCdxbfCYpHUNQhF/zg3J7mzhN5GZiXOd3t9HGYYw6IiY/6WFSMC2d2Px
 5objGaO0JV9C28hKMC1n7twOYofvdVZaRX1VgQmhWfKaAxYSPdXyY/qoMKkvcXDesQvauisVicO
 afTNcSN3Oqk2if5yGbKiB7HwWIw+TWaDiDfHEu3hNx9b8YRVWuj5O1p6x17RB5yRg/CddycmWXX
 6fDJqcjKoV1w97/Q1t6pngMQJC6mZODcM5jHSNBK/3eg5Hm7NJcsBh1YwQWUpfXRslXqM/HXxBR
 1pSI3MZ0pnP7jXQyO6/39+Tij3Q0waXRYQUcYmqYp+EEwFLcsz2Z4+F8PaSZMrVE04S1ACYhGvg
 yGsbBfVAb2AYmGx6WV4Kyk2Br1Vd42lnYK/Udf2QEsgqoSadmH48nBD5ZwkAmZHC6ucszhFO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-30_04,2025-05-29_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 malwarescore=0 phishscore=0 mlxlogscore=694
 lowpriorityscore=0 priorityscore=1501 bulkscore=0 spamscore=0 clxscore=1015
 impostorscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505300093

On 5/30/25 11:28 AM, Wasim Nazir wrote:
> Add initial device tree support for IQ-9075-EVK board,
> based on Qualcomm's QCS9075 SOC.
> 
> Implement basic features like uart/ufs to enable boot to shell.
> 
> Co-developed-by: Rakesh Kota <quic_kotarake@quicinc.com>
> Signed-off-by: Rakesh Kota <quic_kotarake@quicinc.com>
> Co-developed-by: Sayali Lokhande <quic_sayalil@quicinc.com>
> Signed-off-by: Sayali Lokhande <quic_sayalil@quicinc.com>
> Signed-off-by: Wasim Nazir <quic_wasimn@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

