Return-Path: <devicetree+bounces-271352-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0AyiEisMqWnm0gAAu9opvQ
	(envelope-from <devicetree+bounces-271352-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 05:52:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9581120AEB2
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 05:52:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 24293302C93E
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 04:52:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1AD82773F9;
	Thu,  5 Mar 2026 04:52:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RwG++LnK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HFlAzo/D"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74B1026E718
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 04:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772686344; cv=none; b=pOe/lqLoROiMAM19wvmrPm58f3i2wL9lyBhJ93h+Ky5tlbPfUd/3ZLshR0X787hhzSj02sOtgQlRPGpNBPntdL9b7ghJY1m0b1yb1qi9sQG15R1gTVUstgB16HPyN//pOOxNqQ4arneZvggmNCnMJacY8d9iiFLQ6/nX01zkuKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772686344; c=relaxed/simple;
	bh=+n1TIr6il2OdN77z+ioUyXcfHokQELo/8sfunMKxI50=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hme4oprYvcCrwZ5jqWvykp8zM53NwBmuirJwEW2o25lQ6aUItZGmNYrxClryr2Lg8tGzhZltlVGAmlVKtZaapRhvFE8gGWs67nvhtXHfD+coNnPjSrGMNU3dWgWTQgsSfZDFsO/Al0+Ow3pDyqX8+uPi6ivNcTBe7gQ3/6NEZKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RwG++LnK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HFlAzo/D; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6251CEPp3473595
	for <devicetree@vger.kernel.org>; Thu, 5 Mar 2026 04:52:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=tAEZJinkOXHpWlC6EJ3absTu
	QVPfZjNiktZ/lJ75mFg=; b=RwG++LnK3jYb28yofl4hwv9moteNAuAGkNvigSbt
	7o/l8ph+nk5G1uaLf5WDNxvr92O1YnnHuk+3IilPWsd+dAkoIgYOdUjCFu7i6Qrc
	rQ/i3t7M6N8TB45UiwaLe3kfZI5VfHEPR8ry4iG03l/PQduzu1Rte9GIG83ELazZ
	ozHKN7NpWKO1iD7KZDN7nHN/cqOAGrbvfhXd62RzQwp3I8td6XQupEwkH8+zrxzz
	RJ/LOOC5GG0QZbCjVkBRdJQEaqU4U0z7AxPrdWAa7FBtoXoVnzJo4XtizJHQD7Ap
	njdWG3rQozntZQ0AN/GE9kJpmCt62lidyP1wwN6wqCVSRA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpj18380u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 04:52:22 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-899f671c5c1so187775116d6.3
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 20:52:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772686341; x=1773291141; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tAEZJinkOXHpWlC6EJ3absTuQVPfZjNiktZ/lJ75mFg=;
        b=HFlAzo/DVYDFyH0I4YzjUS3Boc/4Ng+RzNmPeF0C4m2eUGHxb/KVDS2c5AM9cKXtBY
         jR1r3NPYC0VTiHwpCXvWKfR8HMwYwaZn5FwJQIAarZRzbzi1zqFzUYzBrXr1rYltN11B
         Po3ar9CUNii8xn+CtwpQ+R3f1V4bl+kVPYOWJ4I+hwmIGvSYjNbf07ssLZEHn6hPLR2a
         p7xNVKp5JvwECorzxOkTZOzOeLBy05cAiwlgYOYUIv8lNDiHT+MdFpv07PBmlivF4/xr
         TK3BdOTo6NFc3g3UpCuN6L7MqlRLa8SZNV9V8S4bFRQuXREidNJphJI6zD12Imq6ZOH8
         4Fvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772686341; x=1773291141;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tAEZJinkOXHpWlC6EJ3absTuQVPfZjNiktZ/lJ75mFg=;
        b=qQN26sJDaP+SBM5ZrkIa7K7qkuUk7G2dCevXkbWo+ob1STyNn6xxdhoW/ewXf32QSA
         L1sD/JFn4fPDRMJzVTrAdbmWrz13jgzAR7fTqWiPRIFziCzrGsWLhNv1zP4qDobUS16f
         k9Mh/SGsP97gBUOPPEqRljkCCOyuaOMO1xh06ROl206tWTvZHu+2eG7F29Mdr4D1+LUd
         7OlBjFhUkVmiHFplATJRw/mV/uzxxPr2R3B6R8RsKpFKDntuAHfEhZ6D8vpFw/QeBk00
         iKySkk6WjZ0a0aWVmCY+xAF4Hq4oPaLPfl8H9tf7rE+BY5IiD+U+oE5bdLs/7zsQo0k+
         IOwQ==
X-Forwarded-Encrypted: i=1; AJvYcCWyM9UL8MsHiciBXuhdvUt7FNs3dehhZ/eNwwX5UpV4PF6VCKkOHF6vt9lxWj7HuHj6SVkSxElEv3u4@vger.kernel.org
X-Gm-Message-State: AOJu0YwcE2otOwS14khXeIoAc1WILRTJ+1pr5b24MlGxQOum4l1n1ZYi
	KJ3sDmRJvPdmwj4ky/01jKQzh/fhsFlfFjjH9UOKmM6UD0crshFgOr1gn2JqGVXm9xY8Q8MOHr6
	sbce5o2KTbOvXCEZstY1MGFChTxYmtUCQb0SalW78NzDjPKv7uCkPtzlbsDCwIoVZ
X-Gm-Gg: ATEYQzxHs306JRo1Ui41sIobPZPJdrEjsDN19Cq5zROZep960itt/YSpClFfRs7jkcD
	WV5Y5NiY6boCxKJpSkAuNDnhdTsYY25E9g6Jf8sWIi/WYv0GKG3G+IYqB8BWrQtgzdznp1Nfnaf
	Qat92+RMurWPtcr5IS3xNu71wWAFUWIVoRsAiqfBKChcSxTiMI/68hpHIW9082V4JzULSIHNxRX
	60oq/iiQowzO46Oy6JSgMqhyjdSpkNiy5EgthR8QWpz/EoB/7l2AkXKG7KAzO9LOb0V9ZiYX8Op
	40mCfxc0xUBWkOm0bDWmQNLZTQsnfM8/HpX+RGfZE5dHSGtJbiZJsEBPPCmHi6pjpXvJVw6MduE
	TRubBMlEclcfoo2WE5c72ttmqrp4mU/SmE0vThQ2tHnBp5bX4OwvCCYDLI3CViu2uL6kRrE+cmD
	/3ByuoWyCvh0UZ/elx/nedZHRg1ok0Ni5+AbU=
X-Received: by 2002:a05:620a:4481:b0:8cb:6b4:7007 with SMTP id af79cd13be357-8cd5afd23c0mr544619085a.81.1772686341517;
        Wed, 04 Mar 2026 20:52:21 -0800 (PST)
X-Received: by 2002:a05:620a:4481:b0:8cb:6b4:7007 with SMTP id af79cd13be357-8cd5afd23c0mr544616985a.81.1772686341053;
        Wed, 04 Mar 2026 20:52:21 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a133201faasm143083e87.68.2026.03.04.20.52.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 20:52:20 -0800 (PST)
Date: Thu, 5 Mar 2026 06:52:17 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Monish Chunara <monish.chunara@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mani@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, sarthak.garg@oss.qualcomm.com,
        pradeep.pragallapati@oss.qualcomm.com
Subject: Re: [PATCH V1 0/2] arm64: dts: qcom: lemans-evk: Update SDHC storage
 support via overlays
Message-ID: <ioyvbf5wqfvu6ddl4ua2upow7wdw2xmdjszuoubh5cbsko2ovg@gilcelxn77di>
References: <20260227102405.2339544-1-monish.chunara@oss.qualcomm.com>
 <fg4lxixp4fekhxbvisohgxoiaqya6gvuw5czflkk54kvr75xs4@nnze5nvbk2ix>
 <aaWh9ThZJK49Ex4o@hu-mchunara-hyd.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aaWh9ThZJK49Ex4o@hu-mchunara-hyd.qualcomm.com>
X-Proofpoint-GUID: Kj8NFkdH7NROlyE3tWR7l6RS8dh6kLXi
X-Proofpoint-ORIG-GUID: Kj8NFkdH7NROlyE3tWR7l6RS8dh6kLXi
X-Authority-Analysis: v=2.4 cv=Ed7FgfmC c=1 sm=1 tr=0 ts=69a90c06 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=OSCGcBb75sj0RwwxUKgA:9
 a=CjuIK1q_8ugA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDAzMyBTYWx0ZWRfX+ibhz4Twwflm
 lMdFjTQ3PcYf4SEYUrXsRrZqmY4BCay0GkiW+ivJAOHcW/unRTR3EqQLLWhBosbt8abfHXSE3I2
 y06/QAZP2VQTwEgIxbdtyC5NRCPdhJKcdUuAWv/KwCg8VvtKrcJBQIWKaCpwA+JZKnBckj1fT2S
 zQe7AxBd3joEllV9bBD0CKVrd7D+aa/x4xEWJy3AbUxT9Bpjlm/jhqOUd2o+gs6cDlJbSib752E
 1wlbb3MrrlWePR4YvzaHx6VljRwuevd87WZukyR9ThsfCSZQM+P2YG7MkrMrUiwwG+hS0Y2y1Gg
 llGfiNceVNRHl7GReJYv1edCgdfHS9RSYyP2+4B9q0sflADLEAa3BPmhK8W71eVaqP+1pYdWzNs
 glU3c3KIWgcRL17NB97/j/+e4Kp9ja/CSlTty5ct22iFj0MT5tYMR0G/cna0Hgeh4bay4+T9BWF
 9ec5uTYgPA5eHXBl9Tw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_09,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 spamscore=0 adultscore=0 lowpriorityscore=0
 clxscore=1015 malwarescore=0 impostorscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603050033
X-Rspamd-Queue-Id: 9581120AEB2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271352-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Mon, Mar 02, 2026 at 08:13:01PM +0530, Monish Chunara wrote:
> On Fri, Feb 27, 2026 at 10:07:33PM +0200, Dmitry Baryshkov wrote:
> > On Fri, Feb 27, 2026 at 03:54:03PM +0530, Monish Chunara wrote:
> > > This series updates the device tree configuration for the LeMans EVK
> > > board to support dynamic selection between SD card and eMMC storage.
> > > 
> > > The LeMans EVK hardware supports either an SD card or eMMC, but the
> > > interfaces are mutually exclusive as they share the same controller and
> > > resources. Previously, SD card support was hardcoded in the main device
> > > tree, preventing easy switching to eMMC.
> > > 
> > > This series refactors the SDHC configuration by:
> > > 
> > > 1. Moving the existing SD card configuration into a dedicated overlay.
> > > 2. Adding a new overlay to support eMMC.
> > > 3. Updating the common SDHC node in the SoC dtsi to include necessary
> > > resources (clocks, register ranges) required by the eMMC configuration.
> > > 
> > > This allows the bootloader to apply the appropriate overlay based on the
> > > desired storage medium.
> > 
> > Is there a default mode of operation / extension? If there is one,
> > please define it in the base DT and override it in a single overlay
> > rather than having two mutually exclusive overlays.
> > 
> 
> The LeMans EVK has SD card slot onboard and eMMC support via a mezzanine card.
> 
> However, if SD card is configured to be a default case in plaform DT, some of
> the properties like 'no-mmc' would conflict for eMMC use case which cannot be
> deleted in an overlay file, and vice versa. To avoid such issues, definied
> separate overlays for both which gets selected based on the actual connection on
> the board.

What would be the result of not specifying the no-mmc in the base DT?

-- 
With best wishes
Dmitry

