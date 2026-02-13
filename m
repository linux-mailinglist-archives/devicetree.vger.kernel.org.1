Return-Path: <devicetree+bounces-265432-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yLIxF9FUj2lqQQEAu9opvQ
	(envelope-from <devicetree+bounces-265432-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 17:44:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A030138552
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 17:44:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9D3893037D74
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 16:40:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A5E53644A4;
	Fri, 13 Feb 2026 16:40:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eQCwN/9i";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fVJNATfl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D52AD315D3E
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 16:40:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771000831; cv=none; b=JnT3y4S22d2AXYkD3mVa23KJIhgijz+8k5pkeGFElt+aUBmO1hSkYEYD5eWm6KpNWEwpujVpVTVmyKbG4NLxZ7dyySYVBnIX7Jk2p1WIEMKBMPSBLhGOabJ01qI+wEnE3nq9J7Gs00yvRtJEiwICDBfom2ofHvh4pRqaLQVbeDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771000831; c=relaxed/simple;
	bh=qDVvGh+76sTjCZiSzilUGG7sWVwCUrNKU5Wqi2dAdX4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GFj/r5SOUKuON6XcD7MIiJlpmbR5ktLc5fRM8ZSkQXHpXQljhkC7Z9S3oo3s44K4g0xbstuNBfleoAgn1DQVucKcTiKBrc+YbbuEx+VRVi9RtKoaoEyvMfbg3d7fIQFangtiUp7uBMCWssnXGU9o2LCV0MBRcXjL0AJ0ILLj1Aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eQCwN/9i; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fVJNATfl; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61DF6EgD3424059
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 16:40:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=vsAMKhs6S1NPffJlhKX9y1rd
	VZ6mCP64HnStmjH9xaw=; b=eQCwN/9iMWyaHo1bbAbFoZ7fCRKvXrRt9ibC+peP
	xj3AVeTUKj0gDV4yENmKFGVZB+PLCGu/16AK6tVEoGOz+z28blU61dyN0LutJwxW
	duNaLi5opM3iLrAjf4DGvFc4hrbBkpDJyEdPtv8irxMM/wr6uzEc9q/MVKR+g0rB
	2MPEOVzb+7jqWaKFb8RohR9EmhYvi4pYiGqolzC7w48hi7Vyc7ohWSbUNesH8Yn5
	FHIdXPV8Vue+xQKkx2PBcrjQXgziOe81OrUU7IpeAraMzCuWjAh+GuFhMBh4zTag
	HyJeo/hqa84hzl08T2qQ8Xmmk00UPAvgFj6II7oSBcJ/1w==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c9yvrsvhv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 16:40:28 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb3ad1b81aso564672885a.2
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 08:40:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771000827; x=1771605627; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vsAMKhs6S1NPffJlhKX9y1rdVZ6mCP64HnStmjH9xaw=;
        b=fVJNATflzXjXq2PvvJ/A2/igqtWK5Lmt+CRlrTX+gAmcG7G0YS4ZGM+kC5xnK3xAUv
         WsLxq/yJ5JloQZwg5n35R0bfxH2K5ODmg0l2lDr3/Thpk9Bm4Mc37I/0zyp7R3FEnBpA
         D5PI/xM1YNXXWywyc4SCTxyHx/LVn1BYxbel3HDNuKm5XKx+Sd/xFi29Rr0L2Ai9voXh
         Joqy9zzZD7zefNvwGfix0ahID+dkkLgu79JquqUznrIiMfPBL59LzrAlexhSWBvZSzBF
         wv7/1sn/fiIkmNFZ4hNzXpgAv5peqPfqX9pxfg5Ua2fcXjYE5YvSqYa8Lk3/Ye37kcjX
         K0WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771000827; x=1771605627;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vsAMKhs6S1NPffJlhKX9y1rdVZ6mCP64HnStmjH9xaw=;
        b=aFuXe+scrNU1Yfz+SLGkggFuCA0zh+bVtx3SKOb7YYoZB2oFXNRWy9ZIzksa37HTXS
         MKkgCTYLNeBg5C5r+f0Mne8RBoeDHulGsH5YIARHU+XZVF+uSw+JhbQc/JF8jXIoWnMd
         BQ5ur/P57FkMOQXnGbymo64UwCM5MpFmXJmZ/LeA8Q/H6ViW73ocni28NnyBWul3+KmP
         4Q1f6S27pfIKu/8hMKclyVvAL/Dysqzk39WwsVva0E2s8roIYbsn28GWo0U5E/Go1yhk
         Qy4Ov9YnDiHaBEFKIkPmc5WvX4LyEeJzMlNOH1H7zGqvhroGUhiYCGYeC5nA3LwlOQ54
         ZbDg==
X-Forwarded-Encrypted: i=1; AJvYcCWCmtk4TMstN9Mlq/kpYctim/n44zD6RA4Zunfp/i9Sk7U/OldXAnI/o0BsVBYyLjvO45gVj14vCHYF@vger.kernel.org
X-Gm-Message-State: AOJu0YzICmFo0fHbF2NioL2//i+oShqwCH2IqhquNGbh06UWpYjjf7jU
	GeHEwxMKeGy98g0uavpgtQTqtDPuYM9kS3WC0YVYzjhKg9KjYwtjk2mJJJz1Q57XPX+hBLIfGFK
	Djpnjd4hY+81JTZJU8i1ZqjpYE27fcsX3fLXwSOWBPCd1/DsUJtv/Klz0bdpabTT+
X-Gm-Gg: AZuq6aKTJq3nLcrVJL71cMPynfmAw6TMUwCqy8DR/RGK+Fi4IkMFZbEO5JQtYku3/nC
	EZnC0AAgMPcpnrT8IaNatP1J7YY/x7xGaSJ01Csstrh/PWf13aeHcPFGSFwV2dJ0kYq3BiFwe4N
	XybnptTG5lUgQGngOMOoXkZBUToJnGkVlEUeQKUlhLD4fZaEWFQIruGRWmeum/jWIqJn5WjP+Xo
	11lnvaGYmAr0DVk8IfoHvd8gV6kukAjZxf9K3925ziLSnkGyA9l0qGh3xtsGFleOr9VYuOLxn2W
	axKFouZ3fm2ALpKjJod8eJFk+1NMImncSWCwGgzLcN+qSUWBed8vCtCD16qI/OJqmfSAtXjO18z
	qURPyx8BhDAOJL5l6c2/9/I3VYvelFIfx/atN/CbJ294pARCToLC106tq9mYP/4NUNCOxm5LL65
	X+0XvX8+FIFvs6xCQXOcNdjBO3/1d0TyO7xgM=
X-Received: by 2002:a05:620a:4607:b0:8c7:176b:ebbe with SMTP id af79cd13be357-8cb4c014765mr13392085a.57.1771000827168;
        Fri, 13 Feb 2026 08:40:27 -0800 (PST)
X-Received: by 2002:a05:620a:4607:b0:8c7:176b:ebbe with SMTP id af79cd13be357-8cb4c014765mr13387985a.57.1771000826679;
        Fri, 13 Feb 2026 08:40:26 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e5f562f8fsm1645806e87.5.2026.02.13.08.40.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Feb 2026 08:40:26 -0800 (PST)
Date: Fri, 13 Feb 2026 18:40:24 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/2] arm64: dts: qcom:
 qcs6490-rb3gen2-industrial-mezzanine: Add TC9563 PCIe switch node for PCIe0
Message-ID: <tri52yrodjeaoayifuud2rof34du7r3jcp564axkns6ncn3syy@ccfmh54d2v4n>
References: <20260212-industrial-mezzanine-pcie-v3-0-1e152937a76a@oss.qualcomm.com>
 <20260212-industrial-mezzanine-pcie-v3-1-1e152937a76a@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260212-industrial-mezzanine-pcie-v3-1-1e152937a76a@oss.qualcomm.com>
X-Proofpoint-GUID: nbIe-E2ChNF58utI3uFowvCy7UqZ-4jh
X-Proofpoint-ORIG-GUID: nbIe-E2ChNF58utI3uFowvCy7UqZ-4jh
X-Authority-Analysis: v=2.4 cv=LNZrgZW9 c=1 sm=1 tr=0 ts=698f53fc cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=qSWERiRezZrDuvaUYp0A:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEzMDEyOCBTYWx0ZWRfX3DUjs8sCt7v+
 R4tfPm7GLqb60KtugX/wmzOuJpEgQTXoC6V1jwyXT2uxEytzhQmnXX1DIXhzBC/22ZBK6WT8UST
 Ho2JW2QRYf7rtAVm6NWY/aXjinYjdh3Nkgizw7KGWTGuO50OsCe8K0CjDFm29EqKVNLsvTHU1Yp
 ymbQmJY5VAvhw6XSLch4CNSAdIj0oXjQXK6l6thJ9N9eKKjuYth9dDh4bCIo/fwTFtL/qL7xlQx
 azF4Rz/kd+0jhXLVXXeI6PBehmVEw4GqVr69JXQJC5KCp2bLK48PqCZvL9kVqriIr32mLwBv7ry
 29/2Rr9IY0jdSTqXazcfs4gmdwnJ79qq37VRI3atvGLbykIxM6htvMKNRKoQOnTZPrtPWndvdL7
 V/poKlN4xrcBPixKytwMPoZOhVZVPguS0qDduP6Y0d/DiEky3e/XbmixcgsnfaINfI79jBlitgn
 w0SfIbI+NhTNtJc+n2g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-13_03,2026-02-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 adultscore=0 suspectscore=0 spamscore=0
 phishscore=0 malwarescore=0 bulkscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602130128
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265432-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6A030138552
X-Rspamd-Action: no action

On Thu, Feb 12, 2026 at 04:14:01PM +0530, Sushrut Shree Trivedi wrote:
> Add a node for the TC9563 PCIe switch connected to PCIe0. The switch
> has three downstream ports.Two embedded Ethernet devices are present
> on one of the downstream ports. All the ports present in the
> node represent the downstream ports and embedded endpoints.
> 
> Power to the TC9563 is supplied through two LDO regulators, which
> are on by default and are added as fixed regulators. TC9563 can be
> configured through I2C.
> 
> Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
> ---
>  .../qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso | 145 +++++++++++++++++++++
>  1 file changed, 145 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

