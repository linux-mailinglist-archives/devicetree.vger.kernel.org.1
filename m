Return-Path: <devicetree+bounces-260043-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cCh2GQfweGkCuAEAu9opvQ
	(envelope-from <devicetree+bounces-260043-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 18:04:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D66709823C
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 18:04:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6FFDB3039928
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 16:51:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB389361DD7;
	Tue, 27 Jan 2026 16:51:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="D4Jv2PHZ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iQ29HVZW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7357C34A3CC
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 16:51:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769532694; cv=none; b=NJd0tHR8HAlsqbgWTlmG0NDJHRupJ423LZZvQfYcZt471xlBDcp1h9mf/9VczLI3q7LvWLqpxUYeyjWHyn4woFk5zO9qC05jboGQiBJkHR8c1wAF5A8n+maTcfKJgRqHExm93MrnRUvLoM8zhaoJ2BgXOoobCzU3ETLWz112PNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769532694; c=relaxed/simple;
	bh=N91x1RWXG9wW6NZaOouglwYEsLKS0pw0JpaN96ynASE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QgFm0lgycvehnZ2mmtA1s9RcEVQcUtpaLbRroeNL+6D+vNOG44ydqlB8MtrV59o/efHK8HLfg+yCydNui6uo3KZt0SfzgcycPUu65PwVeQwqWBXPAsLqJ+0Jj+8mpLhD03d76ctK15XO7Xbga5L9ItgHPb5+xZl4yp9QUwdrkss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=D4Jv2PHZ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iQ29HVZW; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RFAbwX2379408
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 16:51:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=CyyRyKi7UoH77WgG3XX9XJ5m
	NmhBhAXp8DjsvD/vlaY=; b=D4Jv2PHZYdBhMDrD98pNwkEdz7241thykVkKmfVw
	CVM5Oon9SptyVE3r1AvmbPtw1St3lYh4+s4WFJ2z+DTb7K/cPbjLJ4Y+BUtqrvhk
	WJJmRIXQw3gv0ABA4ktb71ee9UtJjS7A4wsqqNce9FwSxHu4FLEHph/s6agdAFPC
	WwbwHhUuaIXUeYGuWaVBJXKDbk7nIIdQZ7QE/3t567SATjYVsJy3d4pLdAAKcmlw
	dRfKq6LM6oJMCddaA6logbS5rz4aJR51WvIWiUZmEvfDN5aJsdQjsu1IUNXnklc3
	Y0ELxN3A0whHYA7tkB+AWoEUjESniIt3tQLIJXTseIG4RQ==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxsjr9s3b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 16:51:32 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-5ec87b2b4ddso6152228137.3
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 08:51:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769532692; x=1770137492; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CyyRyKi7UoH77WgG3XX9XJ5mNmhBhAXp8DjsvD/vlaY=;
        b=iQ29HVZWUcDkaMVtTGlJL5Al+Kz8MyouRJAFK5K6J9OMBL5eClhbUWK94k4pv+BP4G
         5WJrW0uZPcsKXBiwYOg/ShKparKbPOj3BHbvKy61Pt7xrs6xW7pAqBQ/X05byu/jALaP
         B48w3Nj7hIzA6wyAo7xxE9h5vs+vtTpIy2xPeiQor1Y3+zGDcdNs33w+neWdxIt9g0gh
         lmRokYm/QWNwVY2O09H5qzpplHJKJE3B0C0OzaFSGdE83G1qJNsrYkCqCUOWl7R72Hh/
         k3gpW4nX5ofEhd37uB10robSvbtzLP4whvVprbzTREnE0w2oG8oIUcf73PkzTZutFIhq
         Mc6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769532692; x=1770137492;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CyyRyKi7UoH77WgG3XX9XJ5mNmhBhAXp8DjsvD/vlaY=;
        b=n4w1KiqyMw0bptvYj07q3sYw40RTgZMWhxLx72zPctFbf7KfDBXwVBySsSJfBUsxiz
         V4KIkShOtXq/EQZ+8UmqV9Y0m8NiUJtjXfl5xPdsr6R5IFBopkh08QMdM2PG+P/Q2Sma
         EivkA+2uexLPrXP9703nmBh66/1mTOOHQd6M1z4FbNfChkLin+Kpt7VH4hi1OHmqQrH8
         WVG1Yp0SgpQseY8yuYFDBRWe4qV2e3lqBRYSnRj42YViwOH/3rUO2EHN5Od4EF1Xv8GF
         NzzT/8JX8RJpeFUig7qR1WwtAZruYUsAtF1MtdBYfsX4ND8pWFiC42U1s0DGCGt3bJxS
         fRhQ==
X-Forwarded-Encrypted: i=1; AJvYcCXH1YrGiGGguD/DBHlSJWCqj1iJXBmhT2q8yQb2GZ8QNtoKxnjWkdqs3t4EqqFzzlDU+HEw97MfblFA@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9LLv+/b8sxFc9BYYJNZfGCUsNBq/BBxyId1tU8st2Gr/aTgcS
	TMi8Mharx+kpeLMQh1A/ILBju96J6TRdlM90Z4W2XtApmqQ5CLyOhyBmtAi9txsZlP5czCTZwue
	MC1tEysQvF5JMuO0/olTJdSbCj25dAJZp16ZC+CLJnr7S4mvg/dEMfxfVwkFExVzY
X-Gm-Gg: AZuq6aKlroXkImiMBHGyJoPAkp//pm8+KzniSoe493ftN1aHFAyEu4odBajVDDm9zXt
	aSoKy0bt03ZGhtgt7CdLf0U5OwVG8xsUkKs05mLP52BHE3njzHFVPI1H+enut3PiQo7pGbeAdS7
	3q1sKsF9Y3qlXmzUYsU8KU/ijPRVOE+fMredDuLpfXQJu0arVuPNiLybjFWUXxbbv0JMyB8zXoJ
	gQpqzGqDOwYPBT5ClS1kwRPDXb8JgdL8iGvV8VhW4Q5qcqNiobWDhD6UNjsntpRlMMPr+MrDxz8
	DyiOcrdZ2pgfUsIF0RvXgoWJa0I7g+E1MHtAoMHH4DOEEztPQUdOE7FDFR9s/3M9+opuZFKGLt3
	iHFZgZey+e/qathWHhFEdj7oQAJ5kKvpHz3/9FvFF8Py7ww3vqUvTLnHfpFMJdEAHnPTEjq6qx6
	TLtILTSGQWDS/p3r8DgjVp9So=
X-Received: by 2002:a05:6102:41a5:b0:5f5:402b:7eda with SMTP id ada2fe7eead31-5f7236260dbmr773803137.10.1769532691708;
        Tue, 27 Jan 2026 08:51:31 -0800 (PST)
X-Received: by 2002:a05:6102:41a5:b0:5f5:402b:7eda with SMTP id ada2fe7eead31-5f7236260dbmr773791137.10.1769532691134;
        Tue, 27 Jan 2026 08:51:31 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e074bbf23sm40703e87.89.2026.01.27.08.51.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 08:51:29 -0800 (PST)
Date: Tue, 27 Jan 2026 18:51:27 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: qcom: talos: Mark usb controllers are
 wakeup capable devices
Message-ID: <yxpb23ffawznmb3syb7k23kz3lcnk6ta7ppaw5wcq3s6witkoc@qnakpsylbuyu>
References: <20260127155537.4088709-1-krishna.kurapati@oss.qualcomm.com>
 <20260127155537.4088709-2-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260127155537.4088709-2-krishna.kurapati@oss.qualcomm.com>
X-Proofpoint-GUID: su8wLeh0WU-OHzTbJ1vhZfbGoxCneLIT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDEzNyBTYWx0ZWRfX/9V1JIP3ojfj
 rngh78LSBN71otBqLfH4TEBwzLAMYWyk1D/GtfUH19mitJOgPk/2UzKmAHXhbCEGbFiOk4WVOpe
 Auq+oYzqCwFHQJACxdtQnmT7MxRzvd0Dmc0EumbWN78bs46WWzsFhocqoYTMwH6kh6belvsudkN
 PISLpVdqQFNpv+JTelMUSHALGEwys919DdgHlC+k60q+niC4yE1uxk2x08dhfDqPxW3RORf6yWY
 WdFltCl23PIViCmJULSkhuAaCPNwFndw7CjiBF9HURUe6pp68nA6RH6XspRWsmHi6Fyr2049QHA
 AAUMCEe2pfVeyt71k6uIvLfP04Sp91rvFiyCQIIexkJcpvbEuF61mLOj2kSWJqfO5vl2TUOe9Lw
 rmC71WSsWpHM2MPERCBUa4zeocx6vRvpUrXAhcrrTwEO3bQfgfVWl4lDy1d3OwuSoIB9i8XqJ8P
 aOn3CRfN67wp76i/zbg==
X-Authority-Analysis: v=2.4 cv=b+i/I9Gx c=1 sm=1 tr=0 ts=6978ed14 cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=o3-VG2yC38D8sthXnsQA:9 a=CjuIK1q_8ugA:10
 a=-aSRE8QhW-JAV6biHavz:22
X-Proofpoint-ORIG-GUID: su8wLeh0WU-OHzTbJ1vhZfbGoxCneLIT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_03,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 lowpriorityscore=0 clxscore=1015 phishscore=0
 impostorscore=0 bulkscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270137
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260043-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D66709823C
X-Rspamd-Action: no action

On Tue, Jan 27, 2026 at 09:25:36PM +0530, Krishna Kurapati wrote:
> USB controllers on talos are wakeup capable. Hence add wakeup-source
> property to both controller nodes.

The order of patches should be exactly opposite: first refactor, then
add new features.

> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/talos.dtsi | 4 ++++
>  1 file changed, 4 insertions(+)
> 

-- 
With best wishes
Dmitry

