Return-Path: <devicetree+bounces-272979-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +M5UJcLermm/JQIAu9opvQ
	(envelope-from <devicetree+bounces-272979-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 15:52:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4209523AF21
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 15:52:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CCADB3062959
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 14:51:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88FFF3D564B;
	Mon,  9 Mar 2026 14:51:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZnPnstlN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Qkeyz60b"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BED83D413B
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 14:51:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773067877; cv=none; b=NRUNgL846rV++n0BGFCjNRa28g0HJSvFCHvhTliblaRdniREsfGt8mZjgnC/1+p1Zxu0l5LRK4MGEvJFNhMosFwvmDoIieK25vv4YwoPO5pn9uCvEHnqIO7Exx5wjrQv6lU58x5yge650txvZW5U3AofQEZlUw8fY6bM/cTr+kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773067877; c=relaxed/simple;
	bh=T15w+mA7PI0yVMrsEdgzW+cxgtYUaIeSuwagds4Ltb4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=USU8qtbpM+rAXossrv2VSRkc7j7UDTDwORLLJOXo0+aEKUMLVjM5dTbdneoV+ZTv96Pt5CTxym+z51rC5Pv4bY8xHvLjA4oqyAW2iGwilaaiGR7drCknRgvb2P6KMhrT1HEzN7dZKGW4KMbfExPGi/zw6ZNGPYHKGCCOkHe17gQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZnPnstlN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Qkeyz60b; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 629DHVRZ1380149
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 14:51:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=2AIZ1yU4si82pf48ooCI/MJh
	EDORjV/eloMy2PwjdFQ=; b=ZnPnstlNvc9/gMnkQQN+7bHEbMxq49nNA6abbcp8
	44oFADkjHbezMCX6yTVBKMC0M/tSGKVH2kdu6W6z3H/caQ8vU6bM1f3wuxcCDieX
	b26Co6fjCvEENh1TtXnawDFQMF545m5XbQxtdqpJsuqGBXIRVdPcuyISC/jpr84Z
	36byuzeO9xydDajeoKn7UFYzN1mDh4lL1U4dcesePDe5ahGZFbDkxoFSCr7dvs7E
	pn8LGUmPzFTa9/aWMQuDz5pd7vEMbcquUblocYuYlQ9Vz3Lx4el5/D4vrxMiaz0t
	Y63yx8MKQAzop/LfusKGfFOznI+xJvZXW5h484QrKF2pIA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4csxy80agy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 14:51:15 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-509114d7418so4388571cf.1
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 07:51:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773067874; x=1773672674; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2AIZ1yU4si82pf48ooCI/MJhEDORjV/eloMy2PwjdFQ=;
        b=Qkeyz60bZQpCGARhrMx4XMJIBermqdAxEJth5kTy9o6IVo/L8TuC7A9pnyEMnO1DR+
         ulHDJDw1Ltr77PJqWam0HKdGHXqaoqrnzAbusdNuY6swHXA/yy6UEnMvTsiBGs0I82P7
         j95J0zR4gAQ7THt6AemeHSs7OzFuyqtgNVxWHa6G5hb+LnB0c7UBbQRfxpzRi8Ut3qho
         HiR758QkPqVvrpcUyWmUwl4HBabrnT+KC7eQgTmkUP8zaoau2FRpTIYkCAGywPKP/NL4
         xiTeG1W4/WdbrT4ct8a8L6MZOBrTwA31SWOBmhkfJv/9U51Du8oBEtJTByaOZo8nmzLw
         JMig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773067874; x=1773672674;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2AIZ1yU4si82pf48ooCI/MJhEDORjV/eloMy2PwjdFQ=;
        b=Cj9oioBGOpoY24ytL1J6HeTBk5TjC8rIjcMB6fTBYQz2L2+K636gKOMrEXXKulndQU
         /HkekKBEx1h/IQxPeZRTBZmiy5blxVVKxlm+BFJW0J8iy00YPaqpxxS01++0Vzk5QMnk
         qgHDmCw4Oxok5rh9CPr3colXjpqw8AtlMzhxtTHj7m3GEQ9kI5v6KPmCAhXF/xAjIdg9
         ACxleEB0Iag3CyPhsDM64M2iJ43dw/S6H2AB4Ub1o8YeAZ48kNH4W5HYP+vYaDXdMecu
         DUb77nknPCnZ8p8POwR222NCsQQXuIBMnjRD4NaJWACOdGiP4Qx/8P6eHaiNYCR187ci
         r+NQ==
X-Forwarded-Encrypted: i=1; AJvYcCVLtK+XeeDtmqBKh0aEhgpPT6J4f4yNXit1YZykQ80TQE2uRbyWk3iHSMlUoWvztj/6S0c0XJh1Skmw@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8ONyrGta2DO339toa8UmhxrhSZNcLmesXY/1N4fQ/UklEC++U
	MwI21Mc2mB2ypzzj3Op2IQ7rqOt/P8P4gsob72LdqAcgJDXg80hwv4ZAX8l1VjeE4j4h/uURgum
	+r7L19o/HydMlWByXqz7Z3juqZjkdmH4RGhRrvA75vm1NqeOjyvo+XVQ2KBoMe978iGrPQfjZ
X-Gm-Gg: ATEYQzxOGliMa66hwh4MygFkZgRhElLd8uP+1g6HWRKS9zpoQ4D/jS42HCN1fW4T6zh
	v8uVAMtash4sEisDXKpw7CNMMRiRZATpeAdYInUVhjAkajHbRacI0dHKfB/zXSFUNiSM/k4Kl4F
	ORIat0KHVLf9fMkDpwOymEBTAXyfUBSpCEdaQKXVYDhf4NCCWTBI+7agQi619YY8KZPI5z7y8YG
	9SO3RDMoKZAgU5JSN21ErH5n22scpMnTmmf+ATis2TB/zscovlU6DA05IxlpmeROivK/cW7UXLz
	t/Diq0tXvrA/P0xp4qjAw9DVkC/E4GwnmQfwMq6ZBUQkI1NmcgfqHin9E90Hg+LBE5pgCDDgX6H
	xE2byeieN/3XTXleMEcgskb/f4o5gvxi2Eo80
X-Received: by 2002:a05:620a:f05:b0:8c6:ac29:7100 with SMTP id af79cd13be357-8cd6d428309mr1361849885a.42.1773067873984;
        Mon, 09 Mar 2026 07:51:13 -0700 (PDT)
X-Received: by 2002:a05:620a:f05:b0:8c6:ac29:7100 with SMTP id af79cd13be357-8cd6d428309mr1361845985a.42.1773067873405;
        Mon, 09 Mar 2026 07:51:13 -0700 (PDT)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485246ece8bsm132206895e9.4.2026.03.09.07.51.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 07:51:12 -0700 (PDT)
Date: Mon, 9 Mar 2026 16:51:10 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abelvesa@kernel.org>
Subject: Re: [PATCH RFT v3 0/2] arm64: dts: qcom: glymur: Enable SoC-wise
 display and eDP panel on CRD
Message-ID: <whk6dahqx4oda4prn5ek2pglp3kzld46ki3oyrysbvntlu6ev4@yi3jeylmrl4x>
References: <20260303-dts-qcom-glymur-crd-add-edp-v3-0-4d1ffcb1d9f6@oss.qualcomm.com>
 <p6ua35deutb2cf63mdciwh46rufnoubaj2ywjeag2ypntm3zmx@fvyg4qztwr3i>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <p6ua35deutb2cf63mdciwh46rufnoubaj2ywjeag2ypntm3zmx@fvyg4qztwr3i>
X-Authority-Analysis: v=2.4 cv=SvmdKfO0 c=1 sm=1 tr=0 ts=69aede63 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=h0Z6viOZhYfkGdC3WjcA:9 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: IEGRfUii4PpwBRvAD7y0d4VZ_EJ14vNd
X-Proofpoint-ORIG-GUID: IEGRfUii4PpwBRvAD7y0d4VZ_EJ14vNd
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDEzMyBTYWx0ZWRfXxuur2vJlp2pZ
 HFR1s7/U3CoLig8vFL2Hk1SIPbawZwDvHZIZ4jUtNoA8gQyKJDQsPgHv9aFasR/3nbRgsZ0z5zD
 zzkLpDxP5al61BOTmEMw5Ji4ZZn8+0bEtI8/dai25nM7xykztrGKufohGSRXMbJy6XrsNZDGeva
 p+tvAW/vwSlMW7yyh9tTLZnbQa6OcDozB98fGevVEaeMm0y3FNzw4KnpxexQoQUH5hnlzbq79Vd
 45Xl3cxY7U3E/BYuuQ0OmRmRjL7h+8MwZ82WNC7J/BYyLYTXPb1raDzgcbxmv5ODjyOXky29kr3
 bAXb4jARRE408SoGLq1doXeYGuRFNkzJ9TAG2F6ukajAf1h5hHAtWAUrz6BsbsmeuBtz261LBTp
 74RMjWv4MsFjDwAwlG7XFSz7W/uAQKo6Chd4pAmXvfG8TyukTOJaSohy/ffG+tFIi+R7Pow8eji
 B8wjDWcVQKeOzBBbk4Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_04,2026-03-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 spamscore=0 priorityscore=1501 clxscore=1015
 lowpriorityscore=0 adultscore=0 bulkscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090133
X-Rspamd-Queue-Id: 4209523AF21
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272979-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.951];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 26-03-04 14:56:10, Bjorn Andersson wrote:
> On Tue, Mar 03, 2026 at 12:44:07PM +0200, Abel Vesa wrote:
> > Start by describing the MDSS (Mobile Display SubSystem), the MDP
> > (Mobile Display Processor) and the 4 DisplayPort controllers it brings,
> > then describe the PHY used for eDP and tie up the PHY provided clocks
> > to the Display clock controller.
> > 
> > Do all this in order to enable the eDP panel the CRD comes with.
> > 
> > Sent as an RFT since it was only boot-tested on a remote-only accessible
> > device.
> > 
> 
> This doesn't apply, am I doing something wrong?

I think I messed up the dependencies list. Sorry about that.

Let me respin.

