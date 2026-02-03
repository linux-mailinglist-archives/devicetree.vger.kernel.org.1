Return-Path: <devicetree+bounces-262068-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8KlPLz2SgWl/HAMAu9opvQ
	(envelope-from <devicetree+bounces-262068-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 07:14:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 176C5D518A
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 07:14:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 525A730A59DD
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 06:12:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EA8036C0A6;
	Tue,  3 Feb 2026 06:12:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ggfyIGsl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZvmAgqR0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DD6A36C0AF
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 06:11:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770099120; cv=none; b=Xk6rnu8dEK4BoMkK29lIvQensS8r8F6b5z2S6n/GaFWh/Wr1if+Nza2KP/O+bSDT0nTR3UifBbv3ToOwBZUze9eSW6kfTjEjSTwSd9r5K1QOtexL9gHnbHaVn3YBkVdp6i6MsLUUjkKy3YCbpGlTzFKwOFDONS9Ea+WSm35V9/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770099120; c=relaxed/simple;
	bh=lYq5OeEefPX8ATcCKPJgex+PnOl8m+LXBIz+uUMZw5E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Out+FWBDdo/A8baI6A6CGkNz3mrpOb1qYzIkuyV7u7m1sRBMmwxhvlCxx3frnWngjwbIwB0qM2QYqjRr1F4yMoUr9g3xExMV2fQ+BVg1F1ErrqioLNHYGq1GkXXPVGq1IUYV1i6kpBjZ+dxMh9otIwRDJ1cAIzUIAytkxxRFXHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ggfyIGsl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZvmAgqR0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 612MGtC22356983
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 06:11:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=dFGlO62T4d2Cjfh6QnoBjJ99
	2LvGoaOKxRfMnU0jqhc=; b=ggfyIGslln91Jap5bwtNuArH2rM+8Q1bPqvutO7F
	F8pFf9huUohB1iaMbsAujWKRDdb/AeIXzZavrwrsGzesEBmRMArrxu3iLLYZw1De
	/R1SqMSk5SNjoJ3bS3Lyik7eL81gW5sqc+4j5F6lGjGtiJcMdVi6zAn32ma2tcJb
	pVmu1Y6Lk+6ljSWbRJ6his2sghJ70trUNoh9srxPeFI/4ReDCmOCNFSuj8n5sduL
	H/Kl2GdRZ4vWX+1QhCqySaa5EhK5kbjkMENikf6bQyIV5Z6rFj2jMcd2pZ37sEgi
	pukHiObywU9pbNj9b24VwX+t7xqOtCt0ZoFWqH6qOFvBmg==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2v0mav4f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 06:11:57 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-352de7a89e1so4484091a91.1
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 22:11:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770099116; x=1770703916; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dFGlO62T4d2Cjfh6QnoBjJ992LvGoaOKxRfMnU0jqhc=;
        b=ZvmAgqR0JCprq/oC7tjccBIELGCO/DQ2GWmKr0yUVQcrzUxoXqoVk9TLLsDxKTUPna
         JOyBa35+roR7ic3REwuXFH39PyEBs06rG0bCHzPPvm5bkrJ7jLPMgBTIv/ZkPSQwwEXZ
         VYsuL5r9PtEekIl6f8oDEqiqMqK209eiGhVZo0kQCRjVGbAHksppcZdn3r5f7c/cYxfo
         5Dxphy1PbEmP1iUHBt/Fq+NLssGaSaj1dhFMqVBxplHqw3TKD9JE3fQBUuHTMrcbCjQ2
         pZe03SM4U4Gb1DhSWGwIziN56CE3+HxeFlUkX2WNha9yDEluPr0gRQAZ0JQ02zd5rH2K
         kYQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770099116; x=1770703916;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dFGlO62T4d2Cjfh6QnoBjJ992LvGoaOKxRfMnU0jqhc=;
        b=UkElHb+Od8Znoni84yu/dSDUu83u1tud1Vp7ZFVf7dy0hccekWm/1JfbXlGHCXWE58
         nx6W85/HuvzyJExcH+nnIlFUw7NOprOXo2v7HLWHui8rqA+qrz9O+16xO7aGTu09GNz3
         xV9KDUetgRYnLQUtQ/SBpkqnt3UjaGuI3a5Hd0mbWZEp74BA4WDKnMBQKiMs6uhAseaL
         YOHQGCuEI9LCkko+zNwOoC43v/P7NyadvyWxma7KTU08+7dn3PYlivsCKykBcHYIdC39
         DHztGjdB9jaQET1qhYgfnc5UfrH7GbZhzy+JjG/ViqQkXwVdxDs7RalN3PmkGbC1s8ZQ
         NWpQ==
X-Forwarded-Encrypted: i=1; AJvYcCWNLt4AkxuxhESpq3xm1fz8jylG6UF7kGlBcgfA90Q4leo+cAyau7wpMNAOowFLjxNMHZnOr1RqhHRp@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3CgAR6Fp4v07uhzeaVJyEhZD7z8sKORGJphAduzKAYa7MFsyl
	Mrv1wvKovSRX8H2dcHRRM/81vSlcqPavfeI2sICWNEYTaEBCBlffgPreOLQE3cui8tFA6G/4Rly
	2u4WwnknIjd5kxlIwGfcti62vPQzOpi/zPxLm93GDNPl5PwzU2UXOnTWp+r7q/yP/
X-Gm-Gg: AZuq6aIFUk3Ivk0JRF3+ndgEYjHxRD7kP26ppoRBrQc4lqVBPT7cZf1yRl3xTSiKjO2
	9qDAbYAu37TSRYULiSrd3DXGW2Mr7WN7TAIJQ7wP5lRQcWlUTUfG6f+Px5xtwCansRtsPHW/zDG
	PVbD9CL5AhRJu7HYCEZ5B/LqiHRIwQ+a/ByIJUCLd4Pr/7McecSzeCcOdSNKkAWIipix1VxEif7
	Y7kj9uDTDP0pEp5tbiRtOTn/tfvU5WB9ZY+rxip7VHrMR05819W6vKXMW/m3W0QKng4a0rpHLpR
	VQ6t4SXCOobqUA+2ttyr+E90gTnvq6hLQKDOOd9IYhBrrGzw64UPhnaXaLojQpKkElLDbDizc1Y
	u2vfZCCFThkHw0ove0iKZVSDCl/p+DjQ5Efz4
X-Received: by 2002:a17:90a:d604:b0:343:edb0:1012 with SMTP id 98e67ed59e1d1-3543b3ae4c4mr12674745a91.21.1770099116253;
        Mon, 02 Feb 2026 22:11:56 -0800 (PST)
X-Received: by 2002:a17:90a:d604:b0:343:edb0:1012 with SMTP id 98e67ed59e1d1-3543b3ae4c4mr12674733a91.21.1770099115673;
        Mon, 02 Feb 2026 22:11:55 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35477763b81sm1455543a91.10.2026.02.02.22.11.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 22:11:55 -0800 (PST)
Date: Tue, 3 Feb 2026 11:41:48 +0530
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org
Subject: Re: [PATCH v6 5/5] arm64: dts: qcom: ipq5424: add support to get
 watchdog bootstatus from IMEM
Message-ID: <20260203061148.zrusrpvkd5xiiaie@hu-mojha-hyd.qualcomm.com>
References: <20260130-wdt_reset_reason-v6-0-417ab789cd97@oss.qualcomm.com>
 <20260130-wdt_reset_reason-v6-5-417ab789cd97@oss.qualcomm.com>
 <5zqxloovexknbuhknbafc2trf66d6zwtvtkhjbchmbndxg2j6u@3giwqjkd2vl7>
 <20260202134402.ochfxv3lnju3dioa@hu-mojha-hyd.qualcomm.com>
 <cc9e8e60-7f17-49db-9a67-18b42571ccdb@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cc9e8e60-7f17-49db-9a67-18b42571ccdb@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=dceNHHXe c=1 sm=1 tr=0 ts=698191ad cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=mLgwGFatFkYuTAwP7tUA:9
 a=CjuIK1q_8ugA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: xxuoWSe32wG6qYpSlYcrXXeENf23Do3_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDA0NyBTYWx0ZWRfX1cR7ki/dJZWY
 qNCqrzk5rYRhKOnfpPD1ECqLfn6N/hkBm0TyLPL9BPJvTmbvVD2qMz228+/6yTzj/0odkSZKzaB
 3JVkkFQ76fchiWqIP1sPCDwvVFCTraC42XdIfkWQRL2I+ObSbWeS/+p0Crlt4c9uLgTD5XJdAOZ
 C6HlFO4YSoPxF1xTTuMMAP61j8G7l06CzOfFIuney5nuZfmWg8Fr/2CAm4K5QuybvUMU/FSJupH
 9j7suGw7qQUqYT9TVc876oseaxBBApQXZjErI95ZVp6v6JIx9nZyCI0lLiqwpoe+50TNLLRs/+8
 nlQuUMXPPIQzOwV5jPTiSFeyq8OTCE54QKPKKx4cR7VBYpNLrcAW+xxoYx53F8LNHOAjO101gc9
 qJWbzs6NHhx5ukCHE8PVlSiXnV0GMiLpEa9ZBLgkRPSEZUu/sK72umqknBlWOu3ZPsMVjfGc5n7
 Mmy5j8cLBcnEc3BY4VA==
X-Proofpoint-ORIG-GUID: xxuoWSe32wG6qYpSlYcrXXeENf23Do3_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_01,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 impostorscore=0 adultscore=0 phishscore=0 bulkscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602030047
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262068-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,hu-mojha-hyd.qualcomm.com:mid];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mukesh.ojha@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 176C5D518A
X-Rspamd-Action: no action

On Tue, Feb 03, 2026 at 10:05:26AM +0530, Kathiravan Thirumoorthy wrote:
> 
> On 2/2/2026 7:14 PM, Mukesh Ojha wrote:
> > On Sat, Jan 31, 2026 at 10:18:29AM +0200, Dmitry Baryshkov wrote:
> > > On Fri, Jan 30, 2026 at 04:14:34PM +0530, Kathiravan Thirumoorthy wrote:
> > > > Add the "sram" property to the watchdog device node to enable
> > > > retrieval of the system restart reason from IMEM, populated by XBL.
> > > > Parse this information in the watchdog driver and update the bootstatus
> > > > sysFS if the restart was triggered by a watchdog timeout.
> > > > 
> > > > Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> > > > ---
> > > > Changes in v6:
> > > > 	- Update the 'sram' property to point to the SRAM region
> > > > Changes in v5:
> > > > 	- Rename the property 'qcom,imem' to 'sram'
> > > > Changes in v4:
> > > > 	- New patch
> > > > ---
> > > >   arch/arm64/boot/dts/qcom/ipq5424.dtsi | 5 +++++
> > > >   1 file changed, 5 insertions(+)
> > > > 
> > > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > 
> > I have a few more cookies (stored in a fixed IMEM location supported
> > downstream) that I want to add, and they are available on all Qualcomm
> > mobile SoCs. Should it be added under SMEM now?
> 
> 
> Mukesh, you mean SMEM or SRAM? Do we have the consumers in upstream for all
> those cookies?

Forgive me,. yeah I meant SRAM. 

> 
> 
> > 
> > 
> > > 
> > > -- 
> > > With best wishes
> > > Dmitry

-- 
-Mukesh Ojha

