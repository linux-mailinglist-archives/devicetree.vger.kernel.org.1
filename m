Return-Path: <devicetree+bounces-269630-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id V6McIZRyo2lwDQUAu9opvQ
	(envelope-from <devicetree+bounces-269630-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 23:56:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BF5851C9905
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 23:56:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 326FA3014BFB
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 22:56:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3A8E399025;
	Sat, 28 Feb 2026 22:56:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VUCHYn2P";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZV8xYyMr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 821822D0C79
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 22:56:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772319377; cv=none; b=PqOYdvAEkebV8PAzWGxhmbphT9N38CJEpj/aIFbpVZOSsUJkInc6Zn5wo088Xya7w42Zgvf19pFJMzfJphByubkidLgpfOW04/9yfB5rVTJE1b/K6KJMjlEqn1IOrCVHJoyqhOqYZfLMIsUub9VnbDlthIq3RJdt9CeTvjMvka0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772319377; c=relaxed/simple;
	bh=MXTU90D3t2VGd4zY/0wPF1u4PkVOdvEa72HG2LYtUw8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NDZ2rcM/RklRFCH2nDESuQqzwU4J4iTEETchKQNwK8w9hhdR0r5T0gG2e+9Sh8YECqlOtccCbe+iRmj3Fq/YjGcfXQfhFhyTpQlNHdI5SIdzFs482R79f0PMM5zsrOKcKsheXKq1nVDWcVeAOIq0/XgLTX9c0GUmTkTYrx2joQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VUCHYn2P; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZV8xYyMr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61SH03fV198658
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 22:56:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=YQH4GJ65ic0fQf6V6KhCwnR3
	PmbYpcYd6KIrFW/xOjg=; b=VUCHYn2PLeXMsBnBgmVyEpvjdfmr6sf5VaaBYb8R
	LHryGSywRVmGyGNjHPyHG3vlUPbDTrAqNaFR04V8sOCHtZskhTT7ZNABNxKm12oT
	nOHqI9Bw10unfwzF5cFYeWR0Veyl39x9NUrPVbConJI3nEdFAN4hTODgqddGBWc+
	kmkhZz4cRGXfIdupquZTrQZaAeWU5NPatHF1No4tvANMDk2FfotHFWNT+MeHFztJ
	H349fGLg9BHWJzS0Zwm3DuMUDwGyoLK+CVuJcP2E7fa9E+povlGvVDtKxXjpE14r
	pFAlePC3yARRlyJIeR5Tx7o2k7dh7HDWpz/aDniZ5fSXwQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ckshchu8d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 22:56:15 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb3a2eb984so1736243385a.0
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 14:56:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772319375; x=1772924175; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YQH4GJ65ic0fQf6V6KhCwnR3PmbYpcYd6KIrFW/xOjg=;
        b=ZV8xYyMr4sHNuzyiL/mbTKKxToz1+/dQj+J9oPv3ufVM79CS2jSFdPKgncg65TUPZy
         i2k1RVOmemzeOlInDFRomR5FmHFiGtivz517Q0ayig+q8ABdDH71WTkYkNieJHzJBVXF
         JDL7KRe7JOp/lEi0w7w8UUTUx/LAegSqoNKl0e2RDhdataRr7KD0olKDhxVFePkHC2Yg
         e3fFMK+sGVkUqwUDfWzxZoxISTfQTaca3W5/znvwSY7anC9XLslH3nS2IO31huvIP/gf
         DgerS9qLIvn7eCHf82YNAE7a5CK2inHH0lCUrtQE/GGKHPnEZAbcqvSVutHAtMNFNwxa
         ckXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772319375; x=1772924175;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YQH4GJ65ic0fQf6V6KhCwnR3PmbYpcYd6KIrFW/xOjg=;
        b=c6gvMF/DsykuTTZ+Tj+8V4upReE6aQFXn1RaZAq50CSOo8MLS4TgcklSanySalYhIJ
         fpSjz+rUQntBBbX7OcJjEAcPqgtwpK/39kKCd0cjSnYSYgkM+jDAQqxDp4CFcxw0U+pq
         YMoQkadpue5W9TX1F9Lem+SaniYC4MczSiGCjFP2Tp2vVXZSFG1XMj95rKmP+2AZ1JyK
         Ui9EWUsew/mZutB1Ts3mLTBNGz9x6csWU+h+98qiX2BLJyk36uWpGNhnkmJqw4iHD1ht
         VzN9GN53twHSnl9xNFLv8zMQjU3dYmUAuZcNDU33IPDFHzyTSg9Nyv3JGLbLaGCRoyf7
         xLnQ==
X-Forwarded-Encrypted: i=1; AJvYcCWCg07unK6k/PCyJgvrQEoASdfYRpu6YfDPcBBdaiCgLxAOOjKoBk7RTKWBOMH0D7XxrZSQXeKRUQTE@vger.kernel.org
X-Gm-Message-State: AOJu0YzpZS4Sxx24TywwO0Y0yuzyftqdtUNJ6pPj6ya3C74YqXz0C2gA
	3UC9EECGfQNrd5CDMO2eTLzPa8L8Pw2mwQ+1iKzIq5KQvuBVAwyXiW8Zc/ep2XE1Wymh82qzgeb
	HXfRoR570Sk/f6RrpS3uTIysk7Ib/KJkY2WW7v5d/WH7AmpEFDKThC0fvCjNgLA9V
X-Gm-Gg: ATEYQzwX08P754ZjjtQ2rQsnn5/FdVM+UjbEEWF5Kjxg9Hl1eBDSHbiipohhr2PUF8i
	TlJrvjNzDURMsF63wtaVqZCVe5XQYUQiGoHtL8r8VSMWb2+uNHl4QzFoMn1znZCM3kIHDhQUdpq
	mGPqtSTcyeGdlfzk2ClIxoGDbKYkNId0uk7uEYOczPiT/P3bFskh2WH+8TUUr3aN3Fx2SfEC5El
	o8rueyn6+T6PsCgQeg0yY1jx8Q+i/FAWBHxoYhFvZq6IYsSx+EsMMaJfC3n16HvKJlQovg4CXr2
	DrK73CNbSab4cHmnhZBRMhNhZhtjiM90ECUZ4SaroUaAum9uwClyErJNzgx4P9l2s5ALXdoAJ3X
	4Zss22CnhjEA5hW3xY44w1cM9XL0625F14Y8L
X-Received: by 2002:a05:620a:1990:b0:8c6:a034:9226 with SMTP id af79cd13be357-8cbc8e37bf2mr882101285a.82.1772319374719;
        Sat, 28 Feb 2026 14:56:14 -0800 (PST)
X-Received: by 2002:a05:620a:1990:b0:8c6:a034:9226 with SMTP id af79cd13be357-8cbc8e37bf2mr882100285a.82.1772319374290;
        Sat, 28 Feb 2026 14:56:14 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bfb77466sm124689085e9.5.2026.02.28.14.56.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Feb 2026 14:56:12 -0800 (PST)
Date: Sun, 1 Mar 2026 00:56:09 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Val Packett <val@packett.cool>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/2] arm64: dts: qcom: x1-dell-thena: Move PERST and
 Wake GPIOs to PCIe port nodes
Message-ID: <wcpn7d7bw7wmjqlt2varscwcyiwqdnhxvnq3nrnfkrolftnmct@5nvevzinc6wx>
References: <20260228205818.13016-1-val@packett.cool>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260228205818.13016-1-val@packett.cool>
X-Proofpoint-ORIG-GUID: Tx__5HrSTCNTJrxLhaClo_6SAznrnPHk
X-Proofpoint-GUID: Tx__5HrSTCNTJrxLhaClo_6SAznrnPHk
X-Authority-Analysis: v=2.4 cv=SO9PlevH c=1 sm=1 tr=0 ts=69a3728f cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=7fDQ6_9FThYvjtgkSQ8A:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI4MDIxNCBTYWx0ZWRfX8Wr8A8z+2Lyg
 p1rFhMcI4XC4N6zL65aPKKlMdaZ9Xyxaneiv7Te1XRFJ9m7N1j2/p7LlrGR/N2Z5Ijlub7uWJZ0
 2nLhUPXox7m3GZ0OsPj4cpT35YyMn5ghtofy4aB+CPS0+k45ZW/Qrq+j9wvMGGuhJ3JY7RVUWwP
 a+Wfm96NXwpRLrUgMfgvDVI+0mwmqDVBuE6+jhXYT2F1ztLcQoAUEQQD9d5viW5s++5Y8IK+VfM
 umePHue43czEWurxS5Z5DU6gr7C8alU7E7NS120I0Ih7ysWTr+vbjBfT+SYamsKbJLRfRXU0/fb
 BHgjjHXijt2PFMW5aKXjMm7Fhm1x+0QH0YpXU8NrNAgxGlJDTi89+tKhAMC5FRTh+cA3Kse1ze0
 upFOPCPtNkK34XmMrTi3cQxOQfa6uaxsfDdevjcnOTmMAfSWbnvDEeisy2k9E+ByHNjSUb2BLsC
 jx+SGw7qWD4hBln9L8Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-28_07,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 impostorscore=0 spamscore=0 bulkscore=0
 suspectscore=0 priorityscore=1501 adultscore=0 lowpriorityscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602280214
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269630-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BF5851C9905
X-Rspamd-Action: no action

On 26-02-28 17:53:56, Val Packett wrote:
> Recently the DTs for most Hamoa-based devices received this change, but
> the Thena dtsi (common for Dell Latitude and Inspiron SKUs) was skipped.
> Apply the change to it.
> 
> Fixes: 960609b22be5 ("arm64: dts: qcom: hamoa: Move PHY, PERST, and Wake GPIOs to PCIe port nodes and add port Nodes for all PCIe ports")
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Val Packett <val@packett.cool>

FYI, I think CRD was also skipped.

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

