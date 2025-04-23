Return-Path: <devicetree+bounces-169921-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6AEA98B32
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 15:33:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6C59D16B8B3
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 13:33:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1D9917A2EF;
	Wed, 23 Apr 2025 13:32:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Sn3gscLE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4657614AD3F
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 13:32:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745415179; cv=none; b=BFR2XO8TnLpjQcSAFfOnaxJCz4IA5wp4EkjXievF7+JBFHXEhFSoo/hFLLPUxLUUGXpK2ldjDmtmwbvVyLzw9oKnfufz1FUYZDdebtKHF6fFtnuryEvSJm3akQH/1+tcvpuh9pHSvZOmYzNzJa/CxVZiv319dJcWbw7RVhJDaYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745415179; c=relaxed/simple;
	bh=f0LlhMP1zTgqOM4s2hdfTmDlKmxklAfVmO36hNkZkBs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=swdd695yuL5f3hS/0NkdwBBM1TMaa4ujtXgM0vEF1e5rEDZ1Udli5HX4gAxSRZv5CjHGUy4Ivm5vXjHUKCCcNKNI8FAKx2KWqlW099yYPXPaUphQakgZV9u5OMSITfng+OchCTE7E0DEMWV6v7GcL6PYJ9uMB5XeFY8VOaAoFcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Sn3gscLE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53NAkCUA022002
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 13:32:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CzVvCAFn7NPfsPWqPTLJfwY8YHOBJ7V8/Y9zpb3WIbg=; b=Sn3gscLE2KDwm+rH
	HGKMLOTiQHbz2mYKaLRRtu90C45DK5FAu3roDrgmgc0PGrusB1rO2pU+GAw2OOiY
	NQiuEx3H1ZzaGAnUcZtyXcRVfy5BKLinFWvdFG9EeXetbRjrs5yYK8qQiXn4Ckh1
	/1qFh53fhhcF8l2L2PciBFccacHcZsz0Ca8jJ7NtQmQkoAQks5G4qNMNdjgdBzCk
	GFUCr3kf8JtsYD/ftffjkMoGwsfcVeJkKjrAv+uXPdcfzInbxW5vLcEdEeW1fCTN
	nDnGGvJFyeo1lCCdiU5R16d60Rili8GTympINz+PulI0Nj/OdpR52FQral8kYWFy
	lx74KQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh127w6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 13:32:57 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5466ca3e9so71481185a.2
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 06:32:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745415176; x=1746019976;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CzVvCAFn7NPfsPWqPTLJfwY8YHOBJ7V8/Y9zpb3WIbg=;
        b=Q42R1vRUCAnKSUZByd/YVTW7uW5h2LKSqVfpEIGAEduvwM+GIF+iOdyO9XWkGthgyT
         ENbuuWNPejYfHFQ0NPUDagcBsMYjCCBl55t7VnwVFiFLPkOLHC0RKoC+LYsZoD4MhXlP
         c1GU3HARVHGo6WZUhd0tVKXb28kIxbJfgKfA+58RSNlh7omTPr8f7jubPZiwc9K/0zYn
         KPxlUEh/THiTOI68rLatWgWvtXTBA5Al0FIxzIoSjFVSwVjOkj46DGZxsxy840dpx+n/
         uNE1KCG2r+VfTCJHR7seMFleheLgFU/PA7R+j5LnISs17RNC7RX1PaJG2swNbsRryMTM
         Z+BQ==
X-Forwarded-Encrypted: i=1; AJvYcCXIteaT/GS9aYAwlbQa0LKwxNDP7ucH/UJv9fvzcXSjII32wsQdnJJScNjpe7krKpHVTqWP/RXWTJPs@vger.kernel.org
X-Gm-Message-State: AOJu0YycCv/jH7ujCnYxiV2cwBX6dr0yxLxm8Ho/s0iFpGhIq3IaIxrF
	JWC5S095+gEaCGM8YjqdynxYcyI7moJok0siWyieKFlV9v5CsHrpC63HGDxQdKo3Vz5aAZwoZv2
	pHQe0gdv/IWqBDlGOONfN+5VMpSi4517o5NfvqkUn02TTnUeAkPp+grjoKCyk
X-Gm-Gg: ASbGncth6LZE7htc8W2zWAYDzvNEGT1o7c4SBs7BuVenoWPMB/xv3SxvW61LTlrpkVX
	U3Rs1m3q5he8ICO0cW8fCEokp++v9zUmVP2Goa4L7Ac6FibKjIZEwkWE3kOwyJTIktX5o1Ec5i3
	aGYK+xxJ13Imq3/1h1qSJOCbF8MWkZSbs13VIfHxJcD0wPGEnVbuRtzQTB3CHrDJUYptghsLR11
	8SUkNSTt0LYEhY+JERD8nA+sccSWk+i1roB96OSGye7m68sKEmK255Z8HH/Z87/LIs5WFV974pG
	6eVr2Nmubkq0Q5ycye8GQS4gNnw+yiEYjVsNo1QH6H9QO+gG+2OrVNlHhvJUJMvkBjg=
X-Received: by 2002:a05:620a:2550:b0:7c5:6fee:1634 with SMTP id af79cd13be357-7c94d242721mr177991085a.3.1745415176317;
        Wed, 23 Apr 2025 06:32:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGSsZ93i//Sk78zRZIql3z4o3BYAs8oVlEvuFZbuWq+7X6SIajLVb3vJpkuS6Qujy/FvIh6EQ==
X-Received: by 2002:a05:620a:2550:b0:7c5:6fee:1634 with SMTP id af79cd13be357-7c94d242721mr177988785a.3.1745415175951;
        Wed, 23 Apr 2025 06:32:55 -0700 (PDT)
Received: from [192.168.65.183] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f6258340b8sm7466337a12.56.2025.04.23.06.32.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Apr 2025 06:32:54 -0700 (PDT)
Message-ID: <563f1e36-c6af-4bb5-a5cb-91324e0e60b9@oss.qualcomm.com>
Date: Wed, 23 Apr 2025 15:32:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: Add camera clock controller for
 sc8180x
To: Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Taniya Das <quic_tdas@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250422-sc8180x-camcc-support-v1-0-691614d13f06@quicinc.com>
 <20250422-sc8180x-camcc-support-v1-3-691614d13f06@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250422-sc8180x-camcc-support-v1-3-691614d13f06@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 2iaiaWlKHTy-pnNuc3mHjNE18KJhRhaP
X-Authority-Analysis: v=2.4 cv=OY6YDgTY c=1 sm=1 tr=0 ts=6808ec09 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=TyFXSi68Uxypal7PjtQA:9 a=QEXdDO2ut3YA:10
 a=pgX1na8PQfsA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: 2iaiaWlKHTy-pnNuc3mHjNE18KJhRhaP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDIzMDA5NSBTYWx0ZWRfXxOn2Dx2xYLyW 4TmLylmjZYisOAAXMYMi71cE7yap+66nRXluXUAw/apHom4v/RD1UGKf/HwCy+1fg5yt9HmAlOl WC9oqnlaikw7ym9HAKIE7wzHbywFIukIypUwOv+8VKIxjgB7AwIu2vfqrqMxhlV1/T2kVIFFxXf
 tvt3/Zpf8kmjito6AzGhaqPveCZkn8rfKLRIUOLt4xkaQHX545FhmfxgC4FC4hQOEE/8j9sBpIP ZWksP7RjUbiSd4CteMHsqb4X7Egwm6kcmtxhjTZYparMGs7zgPMils0fKeuXPY7eR9R1YiVggV6 T+2yMHg2OO/rnHqLf+Hoc7ufoxu0FZtwbIBOiGhkB6NAigx0Qdnd1nwfbCDBk8lRAwIqTX9iIRJ
 P2cuKWkfq2HGTfgJW6l9cKa/LSqWMuRbv101xTgjeIxqToAKIgRbsBHC2WbpFQ2BS2RisjWM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-23_08,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 lowpriorityscore=0 suspectscore=0 mlxscore=0 clxscore=1015 malwarescore=0
 mlxlogscore=750 phishscore=0 priorityscore=1501 spamscore=0 adultscore=0
 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504230095

On 4/22/25 7:42 AM, Satya Priya Kakitapalli wrote:
> Add device node for camera clock controller on Qualcomm
> SC8180X platform.
> 
> Signed-off-by: Satya Priya Kakitapalli <quic_skakitap@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

