Return-Path: <devicetree+bounces-261875-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oJQ0BfjBgGl3AgMAu9opvQ
	(envelope-from <devicetree+bounces-261875-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 16:25:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id AC75FCE2E7
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 16:25:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 24EBB30058C3
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 15:25:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A7C037AA82;
	Mon,  2 Feb 2026 15:25:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="X+YOTxhb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Til4ER/r"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D25C7137750
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 15:25:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770045902; cv=none; b=c4VPIfR3C9XIQGL21bazlfisW7eswjIi8i4BxUH037E5w77lkm5KAGRNSuZHAP7GGUMJZvPHGE/7NXy1fC3G+JTT8kqtawZJw9PCu+Vj/Q3cSh6DZQQbhoTSOiU6Cg8fONW1PEx+hcW8mar4Q38l661ONjJJZ3nyRCRoaLv2e9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770045902; c=relaxed/simple;
	bh=cnUMvF1PGIRf1t0CxKMPC1P23K+6Cf8tF74KE/1zan8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Man65/mzKFMwrHkKjnGJyScvPQiFW86bTbaOBX85cqTw+4sxwGEkloGMCWAHfRQXghbVCWPd5zKpWDPDX73qV8uf4tsk5B+Ma0sWujZpaUfRxLzjr1rNPSRPLHkfgchpBqrkWLA93ylCqzMFC0/otPUnqR+Y+Hn10NICcLBAIV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=X+YOTxhb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Til4ER/r; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 612F6LjJ1659531
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 15:25:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CfsfjKt78QKfc1zdfZTCrfPCx00aWxfIwixUT2WLb7g=; b=X+YOTxhbetc8MWer
	B0VP/lCfmJxKcF91DZhFc0zv9h1Kh/t/m566CMU05wblLXjLwykoaJbk22Wnl96Y
	KU/QfY/CSZ9tEPFeug4LYkQsnwlXN69jK+E7m4WSdahZnbcKz3F6dN2xhsqK8irb
	JE084PNXYJBaXiY8hsqqrN/Rpmdl5XwF2wCim/RhrMKXi69ncKBSKqvnao9FP+Hy
	kZZF0i5LCAEULvtUPSX5OTUmtdJANC4AlR1wvMjijzoygy8Fz0oO3Qpw0GuGgjYF
	Q8PL7jt9nKA7M447m9kZ1+QGb30Ove/i/32ph0aT+zO97fH/lkRMWMtgkPmqPGx3
	Se1Bcg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c23h1kmmm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 15:24:59 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c6ad709d8fso1103205785a.1
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 07:24:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770045899; x=1770650699; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CfsfjKt78QKfc1zdfZTCrfPCx00aWxfIwixUT2WLb7g=;
        b=Til4ER/rNpsfx3tgg60AQIrEq2FCcKtPHiQfJVzvV9DqDYD67XxGHUWlGb1N7lV82q
         C2loALVrTrjRuOGNQSsRbuOS7GYUmccIhFUBvaKUod5nKONXSF3HbxgfXod0TSKOC7+9
         wKoX75fdJhgZQTymXXHmyawbBJEk6YILCoojmKokzHaJJstBBwXOnhhCbqkCE9ui3JMk
         ksCVHsH0fXFx1ETXOAZA9s0TfbLebeEJ2nQelq1KBXIJ3sMvt8+AcOGQLsKSJen/O97n
         Exf03tfjGbEZfFNjMbkl/pzmfzOegO60RoFuDNOFU4vBksvgTSPIeyHh1u88IZdFR01q
         tH4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770045899; x=1770650699;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CfsfjKt78QKfc1zdfZTCrfPCx00aWxfIwixUT2WLb7g=;
        b=be5nTRO2KEQScbWLbQ/Xna6Quzy/28O5ZwHcHmsDgWclUwz6tkuPbKjBp562MJ2M1W
         wj9BBjjJgGMH699KXsLK2xCGan+EqRBCpg+zEuQ8lq8B8ASI1COOn45SxpN+hYvhidSB
         FGv6KhZfXg1BdnJm+sGqyxdgFLg1EqsgxCL0pLdfLo4pJMWsaL6GEEnXXe793rBNngtX
         rKayT4nVYl7r1iol0NP5xnOcXhg5fHHOR6kUEi6fQdhrxy6s8sBXDMecZaJqZ58AixXF
         PKcgHcYZ4NHbqUliNWj6WaYqeqwejYIlMe6Gr7AOdgfvmRTB81jPSsi89dBHkDtxm0um
         0cFA==
X-Forwarded-Encrypted: i=1; AJvYcCVM3Mb9Uz3pMl8NwjpnRSP2rAJYeAPm6Nw8BSfkmXywa+9O1iKURRD9tQ0yIhESdaPPTvM9wdLidzVt@vger.kernel.org
X-Gm-Message-State: AOJu0YzfW1gB5oBi9njkHfefWRgxxrBrqHijuZPIsMwJ3UhX2/AWGL8H
	nznA8UtctaFT3mtYio2LKIVctsEgYJrnEnawmb7PK8c6A21IsYmjayCo0KhQt7NOB20plTCWHYS
	2jQoWiN49qb+z78b9fVLcRH3LgeeLpusrXmGw0By4QjCx+b+dTpso8rdryxw8UYu+
X-Gm-Gg: AZuq6aKl5KgPIa38brVgaSpXjNYKKODTcDF6YYhi5l68l5ia1GxtgUplgazAKgk87WN
	cWYv5E8Jniw0sn6d3TbXIXGevoQvBMIGy0Yfcp9w1v3XJkXFdjmGTCpOCeFnOwMu8OCgnv3m42A
	6n8GUztLFplaGtdkoewr81wf3MUFe+wgn9stFlNs9/w0OlW1xFLfOq6Cbr2nOSmYM7ua9u8sZgE
	lJHMKd3PJMBJE2TXvyFrJnHWleHLdWLVCspE0M4u29+luvlQNwC4UTT4RtaPN1aPvihsn4alBdo
	Ka4HhHVW+2lvi8q/6nRk0bxNPZptpzMAEiKn80rPJP+xsAj7i/AE4xcSVE2PtdcmQxwWyqCrxgY
	LjdRdJtVfLIbsH8a/dzpqpEQ/
X-Received: by 2002:a05:620a:28d6:b0:8c5:3412:3aa6 with SMTP id af79cd13be357-8c728b6f697mr1737908585a.42.1770045898691;
        Mon, 02 Feb 2026 07:24:58 -0800 (PST)
X-Received: by 2002:a05:620a:28d6:b0:8c5:3412:3aa6 with SMTP id af79cd13be357-8c728b6f697mr1737904685a.42.1770045898072;
        Mon, 02 Feb 2026 07:24:58 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-482e2e3bf18sm98417115e9.19.2026.02.02.07.24.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 07:24:57 -0800 (PST)
Date: Mon, 2 Feb 2026 17:24:55 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: YijieYang <yijie.yang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v5 3/4] arm64: dts: qcom: Add PURWA-IOT-SOM platform
Message-ID: <uys2yweo3r2pxasyeg5rg35g54tmob6pyl6s24tnla7wcglwe3@omafpc6gmbmw>
References: <20260202-purwa-v5-0-1f5a93578802@oss.qualcomm.com>
 <20260202073555.1345260-3-yijie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260202073555.1345260-3-yijie.yang@oss.qualcomm.com>
X-Proofpoint-GUID: KG2IMnmQNjmXN-cxaY4nqAb1X706V-bi
X-Proofpoint-ORIG-GUID: KG2IMnmQNjmXN-cxaY4nqAb1X706V-bi
X-Authority-Analysis: v=2.4 cv=Fu8IPmrq c=1 sm=1 tr=0 ts=6980c1cb cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=HFdUuuCF8L9kRLeQQEgA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDEyMSBTYWx0ZWRfXyyoHPhk5WVlW
 QAFUGbVnCqWU9Nehq8mBqwVlTyrlic+uG1oy6ZaL30TnXVZJebfB9G/Dlle7A021/aQVfYfjcFD
 IkzyZxKfaY2mpvLYB4qQ/jTrXQWr5uitNonizFzmK8Y1JcEMF+2fo87oyJ2CCGLnXPjBgU/FKNp
 RKeng2pEZ5wYSVpKxvhkaEdfJD4xnGu7x2FdULiXZN/0oqWby76cqcy5/V2HZwSNUFu8wjdVOU4
 XPojVB2G3JUPgU/EY8aEtV5lJh1EAoBZvoHIVivDJHtsm//aV2fOH8eG4+tNqb35zRbdnc+W2+h
 yoT8Dnyvg58YzfaDKq3IWhFlWlT+v3S08my33UPuvBmZnTLmLPj39bBNElfh/yQUfxgO6GaTB6L
 S/aoTE2pmtBTy0krQxukwLb+SGYSyZFKH5uCnXWA2SVlazA+6pqGsr1OGcoF6AcsbuFmL9QgrqY
 LY4fXiWTHzUKCbnbWFg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_04,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501
 clxscore=1015 suspectscore=0 bulkscore=0 malwarescore=0 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602020121
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261875-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: AC75FCE2E7
X-Rspamd-Action: no action

On 26-02-02 15:35:47, YijieYang wrote:
> From: Yijie Yang <yijie.yang@oss.qualcomm.com>
> 
> The PURWA-IOT-SOM is a compact computing module that integrates a System
> on Chip (SoC) — specifically the x1p42100 — along with essential
> components optimized for IoT applications. It is designed to be mounted on
> carrier boards, enabling the development of complete embedded systems.
> 
> Purwa uses a slightly different Iris HW revision (8.1.2 on Hamoa, 8.1.11 on
> Purwa). Support will be added later.
> 
> Make the following peripherals on the SOM enabled:
> - Regulators on the SOM
> - Reserved memory regions
> - PCIe3, PCIe4, PCIe5, PCIe6a
> - USB0 through USB6 and their PHYs
> - ADSP, CDSP
> - Graphic
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

