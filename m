Return-Path: <devicetree+bounces-266096-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kOQjCPJXlGkXDAIAu9opvQ
	(envelope-from <devicetree+bounces-266096-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 12:58:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BFA814BAEC
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 12:58:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7C900300D0F6
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 11:58:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 096A5336ED8;
	Tue, 17 Feb 2026 11:58:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NeGuKjqt";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HiS1ad+8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D07223370EC
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 11:58:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771329515; cv=none; b=JZxW5XhZgkfRfwM1Be0xJUaQlVIZfhvV4zdoOhKuA993bNEJbv+KfEoXKbPuFvi3RrlPkv8T2Zt9MZf0TbYtb1neMRcUmbZ1rVA6u5G5CkR75UhlPPOpVLZDKAezVwBlGeyF7iikgPLBC6fQ7jlX+eeWwMNMtywdnFD62cds/co=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771329515; c=relaxed/simple;
	bh=lB/gf0E11bmnsgnV/m+vav+/LPpQMzKbtF3zuDEJCGE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WXmP9lKwbSNBgNmcsCYTcK4lD4DIw4w2synNp72Pvq0uAq4WLk5Uoh9pP8HJUvVO9B1WqaCu/UBcnC2qYN3O98OoaGZxi5k46eoXtPlKn75tLA5HcVS1lgYNU3IGbpxuKoISXs+2HjsilHvM3Ks6s9qAp07saDOlOuSQtfxcZFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NeGuKjqt; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HiS1ad+8; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61HAvj3m850154
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 11:58:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=yys7gCD2fAIuUGWY1bRQew//
	1h753mI9bx5tH+LVY4M=; b=NeGuKjqtEPkNL3byMs4e5jpe3plPqYA1yvaH2mDA
	x3/euqTS1/kBqgqljLkeggZ4a9/ZgZVp9rTS1GILeWg5CM75j6aV4chhdSqwFC5W
	jiqUhoSzoOr6bpheZ7MqKQRrnF1gVmJpeElYKsR41LkRb+li04xZQ6Y0eb+P9gK2
	2/uN4KaprE2a0bhGFyL+y7zpP6Xq2jLF6PFwV8JOELIHIhBmtf/hYq9d3jplFjvd
	dEAaZsP/ExnEk2J1Pt+XdiH8l1qC4wEA7T+4HXSSqFDkeSZvYEM+mUuIDsk+2+Jl
	SGR5IKO4cxB9jdOx66HXwqjHjLjaPeyVQtptx9L+hStdEA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc6nrt665-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 11:58:30 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb4a241582so2244065585a.0
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 03:58:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771329510; x=1771934310; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yys7gCD2fAIuUGWY1bRQew//1h753mI9bx5tH+LVY4M=;
        b=HiS1ad+8P/3v4mMlvEtyAH+/PID/Ru6SvXcOW2FkZFSmCoLOL3NSHmwhfnX3RDScpU
         Vdt9CaGKRepBlRFJ8QuPlW/CKfD+ynIxd0YKWJjkbLUXFZ8Pu8Y4Cx+BaUaO6gu3+0tB
         ICVGkpePCnrs+Ssj0nuIxnroCk67R77xjntwQ1EAz5j+aqfbVRiZQjkL2ZlApW2fRZBV
         1Yv9oQL/EQBqUWJi2iR0NaOjKD1kgVRKjgAAxOMEACKhyqnzs3vKSitvfbkw+svPi+Es
         3Q5ppajt7iLBJdoWh1rIjSRfMa0wvcgIuE+La1t8lY3CFdR9us1UDQdy9gI8DqisaHHi
         wlKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771329510; x=1771934310;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yys7gCD2fAIuUGWY1bRQew//1h753mI9bx5tH+LVY4M=;
        b=imrdjoHXPKe8fuCYu/ONi258IU5qSBfCwSSKQklG8Qv5aB930BJ+xhgrl5sQz6EHkr
         rTX5ScAsNNP/j4oIUXhidvLKQWGeIY4ZtgUCCBymcVJxS6UH8uAe2oVqm4+rnfnB/Wbg
         b9We+5nt2YVRAisOWH003K7Y8raSTllFLTGJ3GwwrKJ+dlLmYDFIayb7Cq2wVTPRMsWX
         271W6SS/2ZcdQAbTlSTcMxS1+cISmhOINuURMQKWriwzaEppTnQDTGNXFIfjc/QzxZ0I
         LjyzjEL6/GC2k7lOJSkAUmJnnPCeH0OqpgOs5Htnu1umPy7dLBoz79dtQAoX0eyfGqGr
         RbPw==
X-Forwarded-Encrypted: i=1; AJvYcCUIQmXnp6pAy+WgEdezG+mEWNxMpBuuz0Bc6EGiuzGroF+CwyCmZBdjYm0My96kzUcmzKQtGj7+n2l5@vger.kernel.org
X-Gm-Message-State: AOJu0YzkZEMrzsmRGX3PkI0XetXyTj9frBWV/vWaGlsq1CD541dlbXJ5
	kZXmPvE2x93LgIwyVKluwG/uv4NnsZBtKupP3dM8PErpUE2AUF+Y5ZJRu4RH5x824yunRtJjUzw
	Mx64nJspXuCtY1GAueEZAtrKo3W/jN4H3vawWQRXU0YrYNVWdFT0Ab7O+ht5KdPYa
X-Gm-Gg: AZuq6aJ3d/DkdvULylbajkXAfwTJqwy+BiMfKhXa001UnTuS6D2p9qqc0WNheUM7T6L
	We0aADlwrCWJjT27GhBN1yh07Rp3jAmfK0jkGA6xth169mRUCfK+fRMaN/f0L56I/OGEJBpdf/W
	mQKNsY9EgaQYJkAe5QUiO4PZXJVlrnROyxMxlvuhJIAZiXrjyHSGA7D+dUdc5JY18t17xOpYNlV
	WuIXe9qHXKC3Hu3lvRI38zPR1eUGIgi9G7Y2cTyGWLEXeVXF4ofSzQy5o9qsIgvVLxkFBUbxQmZ
	5Jy+CVtMV+nZtKbbbz8NMJ96Hc5XeqRaP1K8RW+JZcPT9qefkDFGSbpG+L1EXIfBps1zRgKXbww
	0I7R/Y4hzu7Y6jfK21GUx+CnsgDvgmafrM2D8
X-Received: by 2002:a05:620a:d96:b0:8b2:1f50:ca52 with SMTP id af79cd13be357-8cb408f0f2cmr1572583185a.59.1771329509856;
        Tue, 17 Feb 2026 03:58:29 -0800 (PST)
X-Received: by 2002:a05:620a:d96:b0:8b2:1f50:ca52 with SMTP id af79cd13be357-8cb408f0f2cmr1572580585a.59.1771329509248;
        Tue, 17 Feb 2026 03:58:29 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796ac82f7sm37773934f8f.28.2026.02.17.03.58.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 03:58:28 -0800 (PST)
Date: Tue, 17 Feb 2026 13:58:26 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_nguyenb@quicinc.com, quic_rampraka@quicinc.com,
        quic_pragalla@quicinc.com, quic_sayalil@quicinc.com,
        quic_nitirawa@quicinc.com, quic_bhaskarv@quicinc.com,
        kernel@oss.qualcomm.com
Subject: Re: [PATCH V1] arm64: dts: qcom: hamoa-iot-evk: Add SDC2 node for
 hamoa iot evk board
Message-ID: <qh35usnyr7utolqvtksmezckprwifswk2ktfmn4mbkjc27mn32@5hfm2faq6tkv>
References: <20260211093045.2595126-1-sarthak.garg@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260211093045.2595126-1-sarthak.garg@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=XKo9iAhE c=1 sm=1 tr=0 ts=699457e6 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=bJ4rELEbWjrJv1d6mesA:9 a=CjuIK1q_8ugA:10 a=zgiPjhLxNE0A:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDA5OSBTYWx0ZWRfXyAMCgEKf8b8U
 LbSjrEWABZgOlHLCqZHt1d/kGHHsGlz0S4uRxHrnn7WLwzWsLA2dFG9rKi3Zs9q5AH+4ZStyzIx
 Qkug9H7CtVDRUlZu9KCRSIf3T4A7FCOYnGejoxaoYdjqgGFzvoagPIy7HPX57cw82sDsp1hLEZ5
 Fr23bJOX3LP08SVz+WbvygNp23Jd1TanL790CTiU6aw8b+uybRQLgpHTw7assio93WA8d00Wiyq
 gsw405/SC607MqHfYAajvcgPL9ofi8oStBFk0X54SGAYAWwhGB5HeCGoPVsMplFeig9iRxOfyLM
 4zREkhcG0obuCcbaTHWMDe/+QfHZjt/y2G37uwF3wiQlIlhSGZwBvqrvWPW+8mcGeiH9gG0zMse
 EPIFs8ZutDj2mYZUc5p1nqdegVs5xP9jSbcqkdTHzR9s7OaWtv07qw2G4eM4aauaGAsFW8sFJvN
 SSXN6Osb4g00RYQrIqQ==
X-Proofpoint-ORIG-GUID: C9gbGFhcvMN_SNQzJIr6L4tiB8AqNFbF
X-Proofpoint-GUID: C9gbGFhcvMN_SNQzJIr6L4tiB8AqNFbF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 clxscore=1015 adultscore=0 lowpriorityscore=0 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170099
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266096-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3BFA814BAEC
X-Rspamd-Action: no action

On 26-02-11 15:00:45, Sarthak Garg wrote:
> Enable SD Card host controller for hamoa iot evk board.
> 
> Signed-off-by: Sarthak Garg <sarthak.garg@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

