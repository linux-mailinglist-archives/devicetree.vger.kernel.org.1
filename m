Return-Path: <devicetree+bounces-233160-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B9308C1FAA9
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 11:57:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 3F24734E0A4
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 10:57:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B87EE351FB5;
	Thu, 30 Oct 2025 10:57:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ptxXamHH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="c5ukTVkL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50610312829
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 10:57:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761821848; cv=none; b=hQa7xAukQSEXlfx5NQv7XBMG9ptnzxGkgxnmqZatG1nLxPeJ93pYTN+i/uLh1trCxEfQY+g5VnQjb4BkD8XPvio7y77s36MmQBLo/jCzCteHjRpjE7Jc/nZfiK+fDdX7qMbG7ncUJif3/xna+pCZX6dCtFLjZM8GOo3yGCwp1hU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761821848; c=relaxed/simple;
	bh=CpO4cFWeZy8MJxTpQgzEci5n2dWvROiycCuVUOoSAE4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=muCqV9sy+jIa5DKISmRX3dyaXDuSFIkfNVwFysZCL65EcKUOgGUSkMNiFgeOXIsZaZuvJ30yK+Y9ACHH1s3MhX565rO1BjLGPrtTa0FVkuGOl7uwRA4RrJpBjhGTBA35TcMCBxDZsZBwCLduqc5F4jKjvFZCZqVBAXmleloSzVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ptxXamHH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=c5ukTVkL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59U6XYtI1501676
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 10:57:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wI3InEQIECMqkQy7O5TfdepIrBxYkVLDZFE9coGVYfg=; b=ptxXamHHU/1VFGsH
	rLlLxHZVOoWuQ0ks8izQvLWqRlEVkPum8GU4x81voDPLbxgGeeu9AcIX4OJ4MFwi
	6d4cPmHlWMoBce2NVqQwdUPPNeAWxcrIH1zEicO4WuarG/Xbp8kW25nqRuZ3SdS7
	EJ/nqJodV21MyWvrSnhvXtvTtz0E/Hguhi0OQawtbGBhMMDWGk5xf7xyYv6jf05r
	H0H3EX0TfdxhSgBlKOlhiWimyU8N+l4DhNsldulhM3P03DGAueEcb35DlvMAgUyy
	jTCqdRw78AX8Z2attXs+78mJ0pdlSiDEJdYvC+BPx56pX/THeK2rmBD9hcRYbhFG
	XEBidg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a3t1jt6t6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 10:57:26 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ecf82440dcso1014591cf.1
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 03:57:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761821846; x=1762426646; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wI3InEQIECMqkQy7O5TfdepIrBxYkVLDZFE9coGVYfg=;
        b=c5ukTVkLmQkaVvIRUhDhY1vvgK0EQDDIwe2Do95k5eNQOje6/ScXcJZCqOgsPArJon
         Z6n1Q+Eqg6gRxZA8Y6BKDwsXaFWAQwueJshSKzbXsIa5xnhpDcs94AkTqPNY7F2e2+7h
         3rfeC82eA2lADtQE+28P2BmYs2aPMcRLWG0/FOqLLCIWlaI2h4kXbUXJI+30NTPNW+h9
         L6OqNH2aFVt7vhk2zip2FWkD8x7JaggBsvwGXBxUn61eRBuRadujR1cyrAMjYODUd60S
         dTTMA0wkLjnjvA3SxDKAkoK7sXjTnXd8gkRgRUhhwZX2oqIqjGbYIRI7YZ4SaIDPsW5a
         yrtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761821846; x=1762426646;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wI3InEQIECMqkQy7O5TfdepIrBxYkVLDZFE9coGVYfg=;
        b=CPRTtrZ2207+7YwzJRxTShzLh7oS67xed9n3twBrxXIVeg2PclNE4bZ1+L0qbn6NQF
         R/s4ubRCyAVsc08hChnDuX8rom621Rl+yADrduRYZhEFihEAE7RfYI0XWX0rqCo5gPHJ
         464cmTU7QlJUO2WCixvL+rHUBYIhabr7E1+nBiDJ0x6GsOUOWN7U5IUU6uNvpLxs3aAB
         /+sV4dYNDYWMCcGoKIBe2MhyRph5fsAFRmKQRjZkigNV4XqpoBBnSG3XkLils8weXZ4m
         PiIFae5cuju/dR1apaY62lLzxksPiv59XomGzyggR/exfU8HmS0HiXruWd12SPiVOT++
         AtrQ==
X-Forwarded-Encrypted: i=1; AJvYcCXr5q6jTp3+O+4flWJ2hLcObZ10faCK8nCseoENXj1QX3UapxFPYUBoDQziXHFSfJ1Yz8C8XlPHHq0J@vger.kernel.org
X-Gm-Message-State: AOJu0YzWsdGHJVipxVQK+Bm1+2ZN+GZeeYbMe9opfoe1GG+FL8O2Noek
	QDY1VyeRm1uTDaWE0TCGSJhpEuGHUevvDcX0O0W1yRWJTERVbDTEb1ap9UQHSWM4CDda9+YYk+T
	twMnxsDnGSzvlWNSDVPPWqrIIYBiEVwF/GVIVcjGiEkaxWsmcj/BhJLhqjhOYNXH0
X-Gm-Gg: ASbGncs0OIJgWBeXceD7c4hOL6ePI4CdmpplpR2ldDeKdvHYgoX7eEqXM+hTbLROrLk
	7Pm48+9hfHD3nlTmhX5eaOF/rGX0V6KYMMhsW4a2mVOyh6jyFzATwKoisqXIuA2wwKrhb/Rx9CJ
	cEdjStc03qDJbBKs32OMXevoS5WXjWg8dT38rPRVJXLmKe6ILyq8Vngdv0epP7pP+t12qutrnuC
	KHnIehdSqlnkt4PNbknasFEuCJuXoyqBzBG+Babh+AtZDObtwiJpfXsm54wCICJd0hIrGihJ1uz
	chw1QqKd51SNmf8Y60gvyp0atGj2WUnT9MevvCyQbIEmE9r7hlTbuB9ZKEGkm3AjpsBJSduu0tJ
	evBArw6ry4l3qEI2/7fIzVCvHakboP8xGmijt8xVU5E6OzAhNpJvnkAjn
X-Received: by 2002:ac8:5790:0:b0:4ec:ed46:9268 with SMTP id d75a77b69052e-4ed1e188a7dmr39841751cf.13.1761821845714;
        Thu, 30 Oct 2025 03:57:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGl6BONJiKyE7lXcYLZDY1WqwI8TXc3wEg7QiVTOYxQ9Xnr7NkX2YFXbcmSDRDE5nWX4mRkfw==
X-Received: by 2002:ac8:5790:0:b0:4ec:ed46:9268 with SMTP id d75a77b69052e-4ed1e188a7dmr39841541cf.13.1761821845253;
        Thu, 30 Oct 2025 03:57:25 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d85413b88sm1692295066b.55.2025.10.30.03.57.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Oct 2025 03:57:24 -0700 (PDT)
Message-ID: <a64bf9e8-5cc5-489c-b747-fcdc36a0b2fa@oss.qualcomm.com>
Date: Thu, 30 Oct 2025 11:57:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/7] arm64: dts: qcom: sdm845: create common zap-shader
 node
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251028-dt-zap-shader-v1-0-7eccb823b986@oss.qualcomm.com>
 <20251028-dt-zap-shader-v1-2-7eccb823b986@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251028-dt-zap-shader-v1-2-7eccb823b986@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: uRRkfE_xNN-HmWMPVB3rKIkFrWQkJ5mf
X-Proofpoint-ORIG-GUID: uRRkfE_xNN-HmWMPVB3rKIkFrWQkJ5mf
X-Authority-Analysis: v=2.4 cv=M/lA6iws c=1 sm=1 tr=0 ts=69034496 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=3S55o6r4CRsqHmcx2iYA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDA4OSBTYWx0ZWRfX6IkeTouB7h91
 1Fpw7JVdqW74y7QFvuReKPzm/qvg7JaeaX64s2IsOXd23QbXf8HqXi2SL6hHSUIYOkbL+iCqGPy
 tlccFA6WtFcHGHenCMY7v0F7suXX5XXiJZUP0PRQeyUTT2hx+20boY6yHRNrwy6FJLZgGsbg2fa
 lfi1pmVnHOQwD2rLQhgFQqO/+fr2X6iG67fC2pwVxQLI0VXmD00x5OME7vi6VLYjExu/nZnrONe
 91kwBohmu0Bzq9/0Cl1gFROxiQgBwEKA+oEkvxkmeMFVMjzXUIxJZgvti8cfzVWkMKsSq4kFa4d
 9DfMIGR4reX4eVeAEkHrMHMAbPV7wpFO4cU64PsLkCKl7ed//S/sGP1mc/724B1lN2V0O6/2jpe
 K5pkC0IpDFrjWwefu22gZC/I8Khj9Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_03,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 malwarescore=0 spamscore=0 clxscore=1015 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2510300089

On 10/28/25 10:00 PM, Dmitry Baryshkov wrote:
> In order to reduce duplication, move common GPU memory configuration
> from individual board files to sdm845.dtsi.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

