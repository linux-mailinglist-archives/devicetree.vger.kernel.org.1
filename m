Return-Path: <devicetree+bounces-260673-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iN8xB26semmv9AEAu9opvQ
	(envelope-from <devicetree+bounces-260673-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 01:40:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 83764AA4B0
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 01:40:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CB7423035A90
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 00:38:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3256024CEEA;
	Thu, 29 Jan 2026 00:38:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TQtZnnRa";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jCSmU3aT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8E1B247280
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 00:38:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769647130; cv=none; b=I9b0LxI+X1w8XbcKm6OPaBDgJdGyq2DoDB56ORaTfyf7kj9N4rvKF48KsZ5KJD0yD43Zk/Z6aWEm/1GwDCR9xm8sRls3CID8nmST/SAG+UAyswVQxYO/hMOtx7CcqyDszrKs0d8OwanjVt00jYvAjtcPvsbh8HuFuGP2KhpCMFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769647130; c=relaxed/simple;
	bh=tFGohcXNB1VrbcpvhBb1VEtLIE/4EsHR7WJmt5fou08=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=q5a1+YUwLg2SaQX24XADrUunUPnXNRpgKM0vUdUTGTCGNQt6CcxGzZdRTyY3YMY9i0RasK31Jabf7gOWuef67sxvi8uoAXRcLYwi+iFRDs9/B2MeGWOAOy3X2zDWvJRj3xLrs/nmC6iOYdf3GC1z0IhcUncLnRVP11yqWKfjKp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TQtZnnRa; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jCSmU3aT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60SH3B69895849
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 00:38:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=TbSqA207/UiHc7fl7C8EPRZ8
	omtomNhZDirOcZgI6nI=; b=TQtZnnRa0rbOy9IOQF8gnN4Re+tT6AiYzGdRxFQt
	FOyO35aHOD3CJUieKbIu+7uwRpe6tyB4ob1SaN+1FO5VjyBQl8sXrdch2SSFcHiq
	w2ExKy8sUF7psjPK205C/LwPkDzq+QitgtY5PC8TJDvivLnMjksPcbPSzTVrF3bl
	CIhUB6sC5bpUqIn4eUQXnsaeJ5KMRJYF0U91J+3JxxR6SYoBUv606SIzGQ5djznd
	JyUrJpHZnb6jQY2loWJXeuZ8m8RZC25dgfcua9ZWyz9DUarvr/k4QH3D0eMoPR72
	cdcKxRziVrRfcq8J+VoLL00nRVfRw3Th29Z8kw5GpjVTUg==
Received: from mail-vk1-f200.google.com (mail-vk1-f200.google.com [209.85.221.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4byph39b3m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 00:38:48 +0000 (GMT)
Received: by mail-vk1-f200.google.com with SMTP id 71dfb90a1353d-5662a8e87a0so429848e0c.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 16:38:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769647127; x=1770251927; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=TbSqA207/UiHc7fl7C8EPRZ8omtomNhZDirOcZgI6nI=;
        b=jCSmU3aTcZGlMSEzWFljvAEwTaP1Rk6RXvLhyo5z0TrwY8kHiB+9Npt/gPQo3Iui7t
         J+RGPxO+hCAVDGTdh8w9eYakPz8gKrZ7c/IlzRnmBg5EwosW9OCCBeF1iNh4OD2fMo2l
         CL1O8gWbH8J9HmboGAe4ZS1/ip0gt3o2n+2ddZp/lv8G0qpDU5TVs4hw8r7iYEl+Paut
         w+iQfaVUmFewjy+k5/vr3KEwMiUrFa3eG+ZpYqT+BWvwpb2Uz29EAQ06C4cUxjYmzBQU
         01LE7DRDC2O+XBAF200K9MsP+Qge39IlVDpwE0HYLdpWAinIHR4LRJJs6APh4yA2oE/Q
         Ml8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769647127; x=1770251927;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TbSqA207/UiHc7fl7C8EPRZ8omtomNhZDirOcZgI6nI=;
        b=iK51wS2g5tAyhbVYw5HyJQH0Q3HTsCJdWu7wG6trXV7o1pq8j70zvWL4BsKLzq0f7L
         Ys7VGbzjR38e2Wb8A0mR0GQuZcqLWNG38rOd3IUT8iXWxVvWcGA3vt2Yf00qFfW2bExv
         0h2TRnvN0EhzZSep7bGTXk2FvAWVLqe4Oj7YLJBvfr5FgG4pAOmdrozgkg/3p+RHwEWl
         lnGhRTQmQWEKMxkNTD5RRfepb6+eWgnqIrH2jHVTWEIgBpaBUXuBACrwDDnAMxFmbjD8
         G4TQJMYMmbBqMWBdlNXroIssrHQbunUlbf29WnDiM5glR4779patL2bNXOFe6MLXYZyY
         tOOQ==
X-Forwarded-Encrypted: i=1; AJvYcCUeAhO+ns64rPq7vd7Vb45wS8so+4x2vfJAjApxKS1Rwh+zui/s4NwIMFdyUIrF/eSmIITo2SqOn6A/@vger.kernel.org
X-Gm-Message-State: AOJu0YwLLGdyqnK4Rsd0SaQeWMITldfB2NZh2Y7wNAVsQGvvKfM09MXG
	C2sH5BgUBuT+uXTuuJHP97kCwV7i5aFafr/GWrP83+2TyPmCstRxRnb6ITQ/UbCLE8xCU5lzx+e
	paNoNWVVcBHUdT/q/sqJKSiYeBBiW/+85sBDrGLUX7r7zwcOc5md/pAcAwuf5xvqbIwkeIcBH
X-Gm-Gg: AZuq6aLSlv1E97IDciah9wTBtKdPWofOWSvv3E9Pcgm7wASGI4JMZZux3QoWqBXWBno
	xziRvx7w6EKYfcCN2ZkbYjd+psZWu+MCbdE30bexvgR6gO+mMDRW03ZSQsyfhxjZl3qcRZ/FL/K
	Yxmu0AQyC8otf0A3PQ55LIuOR6n7uzce6hEGSHDD8pRT+O4ZWyZqxeERAYU4LxsNy7HvkxvkV+y
	t5tfuIRrdoUswEhOip+4TYgpCMCIGs43gV/1odTzrhZKEOEI1caGovYCA3/emts7Zh+1I8gWVkF
	9wfmfpFyBlr9Vm7rTaJholteNy2Yoke8bqSdU3ogjZVGtEMBbkTVceEIv4iHSNtz1H3oJa1e5Y5
	jmYb/oAWBGiTto1GjmoEjsOv5sd170+BRMjxFDNMutb/vWRGKk4m/o3WIDPt14SS9zTOMBwpTgy
	Dfjc6CGFikwpF1NTMtSfWCHeY=
X-Received: by 2002:a05:6102:50a7:b0:5dd:89af:459b with SMTP id ada2fe7eead31-5f7235d7477mr1930050137.7.1769647126613;
        Wed, 28 Jan 2026 16:38:46 -0800 (PST)
X-Received: by 2002:a05:6102:50a7:b0:5dd:89af:459b with SMTP id ada2fe7eead31-5f7235d7477mr1930042137.7.1769647126178;
        Wed, 28 Jan 2026 16:38:46 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e0748993esm836048e87.37.2026.01.28.16.38.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 16:38:45 -0800 (PST)
Date: Thu, 29 Jan 2026 02:38:43 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/8] clk: qcom: camcc-x1e80100: Add support for camera
 QDSS debug clocks
Message-ID: <jzg34rsfxoqsrwrkls5dd5l4zereziws2hdtkvotpogwmmbicw@ludqwpxbfp6n>
References: <20260128-purwa-videocc-camcc-v1-0-b23de57df5ba@oss.qualcomm.com>
 <20260128-purwa-videocc-camcc-v1-4-b23de57df5ba@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260128-purwa-videocc-camcc-v1-4-b23de57df5ba@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Z93h3XRA c=1 sm=1 tr=0 ts=697aac18 cx=c_pps
 a=wuOIiItHwq1biOnFUQQHKA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=80PgSMyzE0h40E604UEA:9 a=CjuIK1q_8ugA:10
 a=XD7yVLdPMpWraOa8Un9W:22
X-Proofpoint-ORIG-GUID: kkCSUg2OR60IFP22SvqMqw2t9vA23VNQ
X-Proofpoint-GUID: kkCSUg2OR60IFP22SvqMqw2t9vA23VNQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI5MDAwMiBTYWx0ZWRfX0oEyZKgd9bNq
 bZTa5prQfbzN6vhAHjtTOX4XWkkiII00LK5NNqu21/JaS3oy9vqA3MOq2msVVrI0WHZkSiNE6c0
 LnkHRwWrBP1nIkj/psmn3ueVBFXSuGEMJ/GnxzQymYm19qbK+BGwCxO6rHv9xW2ZzUCziegnXoC
 za2IdC20mIFska4qCDpYhVs62+JpHDd1B0GnYO2NKreW+MWWziqAUbUldyN8wgBDr6qvVl724/R
 dcPVwdPH8ZwZcMq4Zv336L/BCaOkCs8tptWHxyEnRVTCexYiZZ1Y2JASQqIUbDgJXH45q65yfTE
 lyp1EGAGjUHJi72cYx2AlVEOnCDODW8x63zESXebAZu3i3dRaQWNnhwQBEB7sMWjveGFA+ITVYd
 p6WBvIGQEzJtuyN+XYaaOtkeIROl+2aF9wETCIUdJBMnQIn86itV7BkIexa69by6QfWhC9LatKL
 pIz+Oa+qzNHZy3a8esA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_06,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 impostorscore=0 adultscore=0 clxscore=1015
 phishscore=0 spamscore=0 suspectscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601290002
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260673-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 83764AA4B0
X-Rspamd-Action: no action

On Wed, Jan 28, 2026 at 12:56:35AM +0530, Jagadeesh Kona wrote:
> Add support for camera QDSS debug clocks on X1E80100 platform.
> 
> Signed-off-by: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/camcc-x1e80100.c | 64 +++++++++++++++++++++++++++++++++++++++
>  1 file changed, 64 insertions(+)

My memory might be wrong, but wasn't there an issue with those clocks
being not available by default?

-- 
With best wishes
Dmitry

