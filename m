Return-Path: <devicetree+bounces-263761-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mMVbKLIQiWnG1wQAu9opvQ
	(envelope-from <devicetree+bounces-263761-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 23:39:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0558C10A7FB
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 23:39:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B4F403009504
	for <lists+devicetree@lfdr.de>; Sun,  8 Feb 2026 22:39:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21C0037B41E;
	Sun,  8 Feb 2026 22:39:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BsoOHanp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KBIOQ4sN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE09137B407
	for <devicetree@vger.kernel.org>; Sun,  8 Feb 2026 22:39:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770590384; cv=none; b=pRTAYncBloE8wD1F1OWE0jhcA5+Mis7GAPZU+Du8g87BvT0mVSSTbTByt2gFPt4YZZcv+Iacm9oR9c/8n5jh7/6SueMdxpqydcVE0FNvDJgdeP8dcAuDoE1ytYl/Jh3vj82WY4t/O11on7+AOhPE1WegQVVNoyom8cCJG7uHC18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770590384; c=relaxed/simple;
	bh=KhnA001cmBLiTRge7QTvHeHXPdKnZKFDaOU9xp5P1vU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RtvD/kDtHaX8UA0kGotPQdy+rnYR5mpoqFiwCMHQbLkfki3SB3+ZF05gB6I4gkV9j9399hXmv0jOzgoqSH2odxmesm9aT2Su1GaDQbQCdDp0Bk9EQLO6LYMHSisCoIzzBifbEzyGU3SpX+VWHQR4dLuobk/SJG5kfW28NwcR8h8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BsoOHanp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KBIOQ4sN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 618CRMuG689804
	for <devicetree@vger.kernel.org>; Sun, 8 Feb 2026 22:39:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=i0hvmNwVbup3K9BA0emVZrbq
	AEBF7OKynNgcKe/QTQU=; b=BsoOHanp2YYlZQyfPOSX8qes8cIF6jkdue6iA8ih
	AX4xmQTagDs27gP0n+VQhPBHfWHlyrSvjcBO2tzgK0By4Oesb9HvkpZksDVAIe8g
	p82t+PCnABSGOTqTII/D0X6/jg7QDYsn9nNgBHehCE+gayKQ+10UtbjhltwbNvdA
	sMvfFqksE0qUF+KXb0Fz89nB03dM660aVO87aFCsUeawnCE7TKxljyvpTQ1djCTi
	5j/m4RdYLZj8XKtOuuB5Ra7SZRb/gmZkzCSLSWake780ssDlv5nVX1iku1Exdlvn
	4Nf2TcYr/GtdIY+hPG/V1HITf+ELYIkdsVJ4yI8JOGZrkw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5xamu25b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 22:39:42 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c52f07fbd0so1061102785a.2
        for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 14:39:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770590382; x=1771195182; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=i0hvmNwVbup3K9BA0emVZrbqAEBF7OKynNgcKe/QTQU=;
        b=KBIOQ4sNiAwfVMKLppWRQDdGE/IYTqRUWcsg3EVPmFwZGB+pEFpC/+ghjc7G4t2lF6
         Q4hIrfeve2eDHT7IxsRdNL+QuxNh9UpkIG4OcuQKDvvKhH2IZNrLIzii6KgCoqnGloUV
         /aiPP/cz1CyWwqLbartlYExNAO12zabXaJsroYtXMOLWsfXijbTpKZyAICadnOK4mKoS
         fV2fMGcFWfKfF4Wja7SW1vnMjXS4ZzclKAi/i/+jU+v0WM1A2UNcskXA5oRhNlJ6wCEU
         ny72QFozgWPbS/UNvM4CXTEZVojuB1jpq+CL+BIQSlJdroY0WIHygY5K5e8rjSv4vqxI
         o6bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770590382; x=1771195182;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i0hvmNwVbup3K9BA0emVZrbqAEBF7OKynNgcKe/QTQU=;
        b=FhuhZ5bpMivmw6eBInctNCFxl0kttqwOYpXoJ33XtCgdAPKnDTBmr1QR2gdjr64C5j
         eMeoyvos8u2JmoXc/bpSSekg2LJcT9h1vHSSw8o/p5mD2tQZumtsghrCFJOxhI9DEKR9
         PzQKFk0D5D75RVqZWhgsf6wAS00UXEHbiSLP9g54gehgnWQLJFotPOunUybI7OCNf9ff
         u/3sWcYabrExORHq7qCx9SnSxBvOszZWFElnFFdLgJEwHQGef9Z2gJFDw6rdfFSCD/HA
         sr6Y1JYwN1nBvYK6rJSy5jnhUT52ONCKti/84Ry8WgXzXUkESUHzEHvKfKBflmxI8S77
         W9mA==
X-Forwarded-Encrypted: i=1; AJvYcCU4xaj6gjWlohQ06Ib6qPNncLOrlEoD0qgZSCX3rJZDGhXqgLrKFr5b6TqDhN4SU1cvsUkw9tPgnPhy@vger.kernel.org
X-Gm-Message-State: AOJu0YyWdcUyagGZbG4gVytEQsL2I8idK2CPbmf7IavIfYxV2dpepbuu
	sbNbu5zA1h1NVsTnp3Bsg69RoPls3R78Lk/vBf7+GVmjlRr2Hf92x6X7xik+kKT+autsaZbXiHy
	ZQwlpjp+h0rlbgaLEzKw/wwJYXMs6VrVJC9wk+iRwWClbiaGhvVUL5dGmdZWrWEDE
X-Gm-Gg: AZuq6aKy6mFrpVBCzrkulKG+LZWRgAFw31ZXgCFpJ0w7J4FYZd9kA4GZxCpxOxyBgpp
	kO1Eo8GM4OHS2RaUwlT9A2cFQ3DIyzJsEQB3JZ/YlEqLGC7VzmxKFQce8gG2J1rQLNcq//OG+cC
	WBnc9GeX7oKp6259RyqLR36k1GuvBbkTuf9Bp8LPRnuJS0OjKGZfM4HbU9zt+/0r5HoPviO6qL2
	zpAiGk+MLG4Y33CEpgi7ohUR5G+YHFApVQaoEqQIdGQjEny1b+i7r4fvA8Haw+aZRzb1qwlAkWS
	4LxwlgryBvGtRurL9rQLZb0+cZZLaON4IEQgNNmxBJxqqfXvckzNyN57X1n0ZjhNoX9MQuNtQT5
	m75BYs106/LuKmji9CtRJRAuYzrM3OP5hPAzxvHT8iMZ+IlgP9pqf3/n6aCKSdOlfcOua3Lpkwr
	plJhHdeo7HYZx8o1MS5OeEF58=
X-Received: by 2002:a05:620a:28c6:b0:8c6:bbfa:36af with SMTP id af79cd13be357-8caefebe3f3mr1203180685a.40.1770590382200;
        Sun, 08 Feb 2026 14:39:42 -0800 (PST)
X-Received: by 2002:a05:620a:28c6:b0:8c6:bbfa:36af with SMTP id af79cd13be357-8caefebe3f3mr1203179485a.40.1770590381705;
        Sun, 08 Feb 2026 14:39:41 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e44cf6f67sm2170402e87.13.2026.02.08.14.39.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Feb 2026 14:39:41 -0800 (PST)
Date: Mon, 9 Feb 2026 00:39:39 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Roger Shimizu <rosh@debian.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: kodiak: Add missing
 usb-role-switch property
Message-ID: <pd7hvx3e4zyvvxwozdid7mhuodjfjdpudpcq5a4e3jysndagwh@erft3vzaukh7>
References: <20260207-next-20260130_rosh-v2-0-548bbe0c7742@debian.org>
 <20260207-next-20260130_rosh-v2-2-548bbe0c7742@debian.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260207-next-20260130_rosh-v2-2-548bbe0c7742@debian.org>
X-Proofpoint-GUID: g6Ypy-bp6qhfigAGickLdl_n2RNefdlw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA4MDE5NSBTYWx0ZWRfX63tCRQWG45Lu
 XKeAG//e5yi8taFq0Re5L/J7/ElC47HQzqwWoHZrNwWIz/hdDJu6ZnGrb77795m0bgrx2iB7TbF
 hnE6UEs6ODamjj8R+ZZT3Vh0UBUWWlC5SjaffmflkTQ6Vxretbjrz+ZFZ3OJRV6kmyyj/oiFXWp
 s+JUwQzqMAY4If2HddftyrjXaISk7U/5dwwRpcGaBlKY3HqEwKoTiUjlHpZXDbi++CVd+AzsPLg
 l3g/ZphnVmnnJksqBrR49Gik1jXPHHCb5GK0CkH/sehsbSkIVocn4iWjC/zy1KPKW2PkcybxBnf
 Vn6OSxBtm8adyKqni5GH8UCDLjeAqCUYUkSfhZ2XrgUJVraFyPe6UoiNfHgarih9wG3ToqpOvjY
 moepLjknubQl47uf4UhGS2NwtmvKa77siPB15yNvr7cL7bff2QP9eTD+/Qydnl592Dr45dhxmZ1
 SctfARXpqbQFLQR+hJQ==
X-Proofpoint-ORIG-GUID: g6Ypy-bp6qhfigAGickLdl_n2RNefdlw
X-Authority-Analysis: v=2.4 cv=Or1CCi/t c=1 sm=1 tr=0 ts=698910ae cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=xNf9USuDAAAA:8
 a=EUspDBNiAAAA:8 a=ag6Ko0Kqwrd2Y-IbJhwA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 priorityscore=1501 bulkscore=0
 malwarescore=0 clxscore=1015 suspectscore=0 phishscore=0 adultscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602080195
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263761-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.981];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0558C10A7FB
X-Rspamd-Action: no action

On Sat, Feb 07, 2026 at 02:45:27AM -0800, Roger Shimizu wrote:
> Add missing usb-role-switch property to usb_1 node.
> 
> Signed-off-by: Roger Shimizu <rosh@debian.org>
> ---
>  arch/arm64/boot/dts/qcom/kodiak.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

