Return-Path: <devicetree+bounces-270515-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cCnvK5njpmnpYgAAu9opvQ
	(envelope-from <devicetree+bounces-270515-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 14:35:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C9F21F05DE
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 14:35:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 599A030965AB
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 13:34:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9592129B8D9;
	Tue,  3 Mar 2026 13:34:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Vc9YYhxE";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WbeXCuW2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD902288E3
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 13:34:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772544866; cv=none; b=OJAR3DVcABjnB8VpBri3Zu5G/7rb7+q08uA2NAJLtF62Z2vGWdb81k5LUcdkY8D5Nl8gxY9PC4vFq8sa/NtDSHIAzo4mCv5yebspPYQiGhHZ0P/Pube1pUiZIQ0MMUEJMzXOhShS29iRu0WrrsvOAq8urMtvC2S1xyvXHpRtJhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772544866; c=relaxed/simple;
	bh=SlNjouqKABxmzV7WrTdzdHU7fSvlJK4meO4sv93jZN8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=a9/1rRYfkQGnLigzH84I0uSEXgWxVVlFHPt/TLKpLwTKY6GbHi4FRjt1rUJoTPvPywUEf5MmRISD3N8zy5EnUqgtpgLyyFIMWMwvxEbO2jiPatWtkVUvXXSxM+dPGWvOMZ5ELVIffalMNT/GIu4woWNLTgxDpw5owWEXKmW4Tq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Vc9YYhxE; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WbeXCuW2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6239nIDb323882
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 13:34:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ZvBZuE/XomQed/AjItL2PQEs
	Qsxd6Eu+axmB+v0qgY8=; b=Vc9YYhxEI+/K6tqRydAuO1pvhLc5jZyVVVHR+VZX
	JwB9HcGOTXVHuKqG9xBkFXzpSCYSd+i9BMFclJyNaq+yz7TPJx8ApGkE/N8kBuco
	jwa05q02gCv2OlUcFwoleaXvo1s/QMlEkXVlClXAaP6Du+kpZkpJocjqlOChd+kR
	L3MZ5kT8F/4Gd/qKq0xOEaTQDBPXDv0x5k4rwXfDRoyw6Yb2Wb5Jy0yztqXpTRmk
	CtgwDRoAE3tKolli42uAQ8dTWyOAFZbOaz2E3tw/m/Obu9TOgBe7tPxeVopiI1l9
	FSZMgfEXweq0NPGmMYGuj3X8nNqwSm0Ii8jEAa0Hy1HaAg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cncmfv7tu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 13:34:23 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c70b6a5821so3229601985a.0
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 05:34:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772544863; x=1773149663; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZvBZuE/XomQed/AjItL2PQEsQsxd6Eu+axmB+v0qgY8=;
        b=WbeXCuW2HrQ/FmLrcIPPFd+7ivkVrc3LDEHlBBev7LlmK3YDc80kXwhvnwozwZBrnb
         8xi93bho00T2finAhriHNv8s5lgmarf06pTPP3gzv5wgp9vOqXxBQOsS6aLoTTsfne5k
         HL1GRxAeiAeqH7hZMvylb4YbDjeuT7TULf2TfeL/aNNveGeSlYIwm7vOk3lMqlEhMjUy
         5Pl8XB+61leiiE9lvjQ9R5KrKcult9Jb2ijfBdf73yIIjR9uCXDtAh5/WfaBgMg1SKJi
         3iPFC8UbuSSzi7QOTeU8urhUYYFnn7EJTte5rEvu9AbUhxC5WRpmrPn6yt/W2rIszTwG
         /HNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772544863; x=1773149663;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZvBZuE/XomQed/AjItL2PQEsQsxd6Eu+axmB+v0qgY8=;
        b=QU5pYuNDUsASbB7UADFaxcfc9mC09uHRc8l6HFFkzeeg82lQmOw5kYEBfa8Wg/sQQ0
         q/OXcdXX7BgOlyhV3/QvqRQyMxUmMl8kvMsyJcbWTIjktVEVbO0DpiReqNUfaTvtxfRt
         +Fwaaz4dlcP+rgoJa9kvnoSuuTGtpUWwHfzIBE7LbZG3OYFp6MKdXz2SkqIoALD05b8N
         OfDs1OWo+9n4lfL2MLo2+AEuXcxu0b8YfYE271qglquLJ63QgnvQ8keFxjorfAbJaNZY
         Xn23O+285wOmTM4wMOKBfXRJL1WPeWlwRe/YV0Ld7imJfpXRcaRjiwE2HRqhxu+hYF5D
         9wzw==
X-Forwarded-Encrypted: i=1; AJvYcCXzh3fz2d1cEiwvvQaGHUla/4QFwvnNHk7VJBJx+6g6yVMlAJHX5IXidUfa426P/J9XJj0OQ+EJh4e8@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8/AAxANIQuInBy6UaSmJbzwkdhkt54PRSDVFfW1YUDrBE/7yn
	NqmctUMEk9sDM7/BHzeIfMVYLXBfmrpSO9koVpiucKqVR/PQaIAb+joN+OSzHNJqN9ACpHuuDax
	p+yiDb8itYCYjl1X3I/Fjq4GDzTaPRtekj9RkCh3v4FNVo0c8bcoXyUZYVCmzmRlC
X-Gm-Gg: ATEYQzwjWH6UL6N8fZRKN8/hLfWhAgaoBuLm2Myhv9Bb6+iRofwqO/CSa5f59RgFUil
	84iav/yEXSMQ3X9hBTIdtT1/s96lgfiId5J/4rNUcExCqSV6pcfmUSxsfUjQROyv0PXyO/t+Ib6
	PjCjswLeWwnP34Uf5kYpgsBRPvwFQE4Bov9Iiz1+GPUMqLr9NPoe5Wu1LVSIyLT1Ynx/z8gHN/X
	ulDhOetTXvs6eWE1yCv3uHesCR5v6DjNmzIV2Evvl53LMBS2wTXhY238OgOaq8ChXSnCUONXOZ/
	LYrWckegm0848Gz6avHXxe7UpYSIivNDiwRZLTLbK8w+U9bL1doeMYVI4gKyt7f1shYvIfRTJZC
	L24ryy0vvx7vgynSKBu6SgfWjqdvi74vlt0Hp
X-Received: by 2002:a05:620a:254d:b0:8c7:1a83:a15a with SMTP id af79cd13be357-8cbc8e01d8bmr1868267785a.59.1772544862424;
        Tue, 03 Mar 2026 05:34:22 -0800 (PST)
X-Received: by 2002:a05:620a:254d:b0:8c7:1a83:a15a with SMTP id af79cd13be357-8cbc8e01d8bmr1868262385a.59.1772544861845;
        Tue, 03 Mar 2026 05:34:21 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439b59723fesm16078037f8f.38.2026.03.03.05.34.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 05:34:21 -0800 (PST)
Date: Tue, 3 Mar 2026 15:34:19 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Taniya Das <taniya.das@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v4 2/3] clk: qcom: Add a driver for SM8750 GPU clocks
Message-ID: <dnfxxncwfh3jerlxhlbhssv64dfiyyf4ohpoxf2nym4pqxkxml@bptjbzorm3d3>
References: <20260303-gpucc_sm8750_v2-v4-0-2f28562db7c9@oss.qualcomm.com>
 <20260303-gpucc_sm8750_v2-v4-2-2f28562db7c9@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260303-gpucc_sm8750_v2-v4-2-2f28562db7c9@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Br+QAIX5 c=1 sm=1 tr=0 ts=69a6e35f cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=-momvpiiut8LGs_r7JQA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: yt3IXpbvg--W6-HJ43amWK_oo3GahIpJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDEwNyBTYWx0ZWRfX8ka/gshP479G
 FykZ0Vz5wMdGUJEEpS4+jTB0KuIYNQ2zX/ZCglLumdV9Wl/VL90tMt4fxVAt36xYfw6GeSDiqRH
 RJiViMlHxrxhv7qzfxF8kEQNKpyLWklqV7JTNI2AHO3K6EUdg4BwxvM9e9SLaij2GZucf92QwZ0
 fAu1Ki2qsKxyhHEhRdUHWyBdOZtUO0QD1J2ifqwa6E1B9btDD7w5yIZxoAzsdCqOWdcPxxf+Uuf
 umVi9IP85phaFjFdnh2MATh5xLOhqvXvFJgglbBjUNftbGeS9hG+XG3zjYGPXMTHN2GflOo9hRw
 f9j+9qvcKYO2QFrTAH6xgNEKpcipu/y/NuzfOgOdLA7PDBWtXpja1HwjoqexpnPb82/iDfQyCxn
 PoWMdViiTuzcSUihWkXsORso14EuywgMQFT4itO8BswxVSmt4RmDW1G9sSM7/GkOonp25v4kJFa
 rFO9QQy4rcNAQFlbQoQ==
X-Proofpoint-GUID: yt3IXpbvg--W6-HJ43amWK_oo3GahIpJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 clxscore=1015 bulkscore=0 spamscore=0
 priorityscore=1501 adultscore=0 lowpriorityscore=0 suspectscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603030107
X-Rspamd-Queue-Id: 5C9F21F05DE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270515-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 26-03-03 15:05:26, Taniya Das wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Support the graphics clock controller for SM8750 for Graphics SW
> driver to use the clocks. GXCLKCTL (Graphics GX Clock Controller) is a
> block dedicated to managing clocks for the GPU subsystem on GX power
> domain. The GX clock controller driver manages only the GX GDSC and the
> rest of the resources of the controller are managed by the firmware.
> 
> Update the compatible for Graphics GX Clock Controller for SM8750 as the
> GX clock controller is a reuse of the Kaanapali driver.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Co-developed-by: Taniya Das <taniya.das@oss.qualcomm.com>
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

