Return-Path: <devicetree+bounces-265454-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6OpTC+9jj2n6QgEAu9opvQ
	(envelope-from <devicetree+bounces-265454-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 18:48:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 808B5138BCD
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 18:48:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2D2FC3039886
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 17:48:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B822F267B90;
	Fri, 13 Feb 2026 17:48:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VJruyAwI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fle45XP+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A08DF22FF22
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 17:48:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771004908; cv=none; b=hJrlUzl2AMp4WGxSVR5sl4vcDeRCIYUjyjdZksWp01prj5lsm6Q5PYsY4jpwaoo9q6f36RQ5AY9ERlGmj/UhFKUkgP0Ysu3gj4GscUU15AE+O+XANjpOEcGPCMOho68gjTTSEhYGLA5CRvjLfSpfcejqeVHJgjW52MxGNLWUmdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771004908; c=relaxed/simple;
	bh=6wf6sSt/9JnzOize+YXAMw2jwR332gWu/KhY6ygh6JM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IQRxm0tdhj15pREesGFYt1ewGSQN32Ll+SvDNjd05mkLB/nqmJR6l2Pbc5uPDljw3GnHZCqIZNRabAj+x256IjOyRdg3URpKOYR6cXMAZHsW6kZHZ/wY5GK9fniKCgYIw5UBdM8eU3w4n87WoGbzUenIt4/0WHurTBkIUNYi/Q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VJruyAwI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fle45XP+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61DH1m3u2733859
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 17:48:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Ci4/1s4SRwzvVN8iVjVKNvya
	xkNCsYgq6vzc61g86zw=; b=VJruyAwI39bB3rSxsI94dPs1lahghbuXBAcdBZBi
	VIzAmDDY347FkbOUnTFrlxW8CEOssOdltuoDLXteIKAjZsrcywAR5/JhhW6szvhf
	tsOT8QtS9HvLX9dkRxV6zQUE7A1IOeRZsROCq1POkd9ixY/E4Q0Iw1z4v69FEoFB
	toTtT3V+ds03X8Onxd/4k2wq4vYzTr49kUxeKeaZY9acjARC+4WW2l3FurVALzQG
	MihvtdccsDdVW8D6GxxA5QjtfnCQboJchyi55rmAkj1WIv2hb8VX5WQIfMFGLW4a
	aKG901K4MdXlpjKHW11qFlB0xZIrEUMsUT6C1mmpISY8mQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c9s6wujrm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 17:48:27 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb3ad1b81aso602839185a.2
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 09:48:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771004906; x=1771609706; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Ci4/1s4SRwzvVN8iVjVKNvyaxkNCsYgq6vzc61g86zw=;
        b=fle45XP+I9hb6vqsW0FKXT2SiwB/ZuTcLt72CfatTwYxweOanQDqIfBXU1ZMFiCHHy
         85k+ebyxgG3JGj4cPUZBIfJSHIHi1KWwiSMpSQwOxH3FBUqJxQW+OqavtxdM6qwrSut3
         TgyYEdZDS07UP04xW3+rVY77ZjQqoL21xqn2zQYdKF1kP8n9sr+8ra/lr78oYsPWpgv1
         kkMixBVFO41lNUvsIjadH1WYFL9Yn5IxZ31tysgR2ZVsWrTn8O6Vsg1ICEvu7UU+rIFM
         FQ10q+u9FUVKeXFJcTCYW/Io1Dfhr1QLIYOvLgVt38o8BXTlzAHKUGYAuBsGx8SL9GpJ
         bqUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771004906; x=1771609706;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ci4/1s4SRwzvVN8iVjVKNvyaxkNCsYgq6vzc61g86zw=;
        b=Qd5yKIPWa7AUo9XxhP7WaO7tPPPve+Rqc5JBA4EfRIcPXKmiDdcRzFCUjTwn7haXaz
         uVcewQZrL6XRar76OXxXBkg83CSs467mhMsInqjWmQW9Obx3++WgXrVhPw2/aTNf5RxS
         OKVcaezTig5zlsHn5Ly+uYywo6JkpoFKeLadPqVg9s9LOdYv6duDrI8fvNKOtYXHkp8J
         Sc3FWA5j/ZRvxpp3YhUAmvMZhLcstDgUfkoh/z5F7jxg67GZVqn6V/lbm3e6gb6Fsz5a
         kltA2Nf9osMgY1PobYNfcSZK8aWrxt39Nu97jd2SzHCPvQmOcQIzNDHmsPql6F+FwiqC
         pc5w==
X-Forwarded-Encrypted: i=1; AJvYcCUzRmRU15d2b4DkP/Cbzvq4PxIYQ9Wdtd/12xxODR7mSGT1tj55QF+lzCiglYo+XtIKLeCopOFw4PYP@vger.kernel.org
X-Gm-Message-State: AOJu0YyLm77bkra5j1Jjl9CHsHv/o9dsMJsvtk1mLj+ZMoUaBMOgKZsg
	pUbJf1w5I3tU0gWOoYmgusdLRM+c8Zu8PoZl89dW4zGQY1DZfZrnWGw3m3g2lT7KVVYqaIE7p5r
	qdl9+qIeIUs0OuVIaMs1JnVdwVzTj3doYODO/CzfastBZFIzGNzIZOtSnuMas2e0L
X-Gm-Gg: AZuq6aIhRWaW5RjLyEq/lY3psOu8zX1cFNAVURnx0XTmbq3EZna54TwwP5pIWcrbiRy
	7Gg/qblDn6Tj3mZ7qxG7dufZHbz8zomaDHVF4Xzxb8OLzUDvmt+o0QWIx1TLOlkR34KjZPUWMsR
	QBYwnY9qNfmdzM0OUotai1WmYbBnrlKrFkGipwxhS61AzJNCUi94AN3F5wXIVHMX6AdZmkqcNEF
	IMwvztG5tccWsHiQS0K5eBwaTuRu27vyJbRm4rEJAENVMiLxqyzZBmS1X2HFYA/4n4egT4p42ET
	A0/crqkxjtprJefJVK7uuHHHQPmvYFRb7c0TBvJfMZ0yE45Y7v/UIrUgplaVoeysyUxpL9BpYE5
	xyYclIjhipksihri7JtsIX36ixGZm3RZSLGNrOnJ7DnIruCcgoA1+qaFRcf7K/jZZInFeSqEn9X
	D2ZxKr3X+9d41/XU0fubXbKAySqtiziWJqhFU=
X-Received: by 2002:a05:620a:1a9e:b0:8ca:d5cb:683e with SMTP id af79cd13be357-8cb4c025d13mr42184585a.75.1771004906091;
        Fri, 13 Feb 2026 09:48:26 -0800 (PST)
X-Received: by 2002:a05:620a:1a9e:b0:8ca:d5cb:683e with SMTP id af79cd13be357-8cb4c025d13mr42182185a.75.1771004905555;
        Fri, 13 Feb 2026 09:48:25 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e5f5a50c2sm1698630e87.45.2026.02.13.09.48.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Feb 2026 09:48:24 -0800 (PST)
Date: Fri, 13 Feb 2026 19:48:23 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] phy: qcom: qmp-pcie: Add vdda-refgen supplies for
 Glymur
Message-ID: <hi2znbyo5tunwi6du5ifxjci4xmjvfz5wrbikqs7yagpt2rhki@il4g5olkhkvw>
References: <20260208-refgen-v1-0-87ca84fd78b3@oss.qualcomm.com>
 <20260208-refgen-v1-2-87ca84fd78b3@oss.qualcomm.com>
 <jvitdcolh4naqjdahaajlzdctcmp3sy5odiheeqacps6pcbg5t@zx3jliileazg>
 <aY1KCLDDoQtLJ4F1@hu-qianyu-lv.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aY1KCLDDoQtLJ4F1@hu-qianyu-lv.qualcomm.com>
X-Proofpoint-ORIG-GUID: -BX4XiVrvA2oCvDh-2f777HRVJxzLsOb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEzMDEzNyBTYWx0ZWRfX5RFsJxO2r9ZM
 xZZhO5+jSM2OybL7//PZOPBtYV6HLHk8vR63JOSYztB/qYfXHv/XbEFK5ckPAkUwOYaY5U0xG4O
 Y6xCFGwuFaYLZPVBfP+PvJAMsNo4cFVQFhL+cf6XEgugJ+mHyXd1ECOD47+Zn1vdPaSOlXRXjoZ
 qnycaHgIl+w0iTFPlPwoGzILIYsVy2LJHJ6mt6wszEtGeC6M8PRY/drUvl9lROq0VaYg4Lt8lP8
 4JmT56i2qpNooz7modgMKUmNdA+jQGIPmLZFoHXpCa8byWS4eK4zJ9YI9t2jbW3SC2hUqu1zxhN
 Y3zK55tNl3P7eZxVox0lu1hoyB66oeVepYdwNotvhy+L+ka0g/w9oGL9THPcspRSGhdglcFBSxt
 tRZV/syyc4BDJBBsr7Gs20KJvpxmHZUgqL0nAkPOi7WLMAx0TX6+tLT7oyXohK8dSG1sjm/KzIa
 HDLLQtiHV261J2GlDPA==
X-Proofpoint-GUID: -BX4XiVrvA2oCvDh-2f777HRVJxzLsOb
X-Authority-Analysis: v=2.4 cv=CLInnBrD c=1 sm=1 tr=0 ts=698f63eb cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=aF5tvdYZbIUOgtc3-ygA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-13_03,2026-02-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 suspectscore=0 clxscore=1015 lowpriorityscore=0
 malwarescore=0 phishscore=0 priorityscore=1501 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602130137
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265454-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 808B5138BCD
X-Rspamd-Action: no action

On Wed, Feb 11, 2026 at 07:33:28PM -0800, Qiang Yu wrote:
> On Mon, Feb 09, 2026 at 03:15:24PM +0200, Dmitry Baryshkov wrote:
> > On Sun, Feb 08, 2026 at 08:49:40PM -0800, Qiang Yu wrote:
> > > The refgen providing reference voltage for PCIe QMP PHY on Glymur requires
> > > two power supplies independent from the PHY's core and qref rails. Add
> > > support for vdda-refgen0p9 and vdda-refgen1p2 supplies with a dedicated
> > > glymur_qmp_phy_vreg_l list.
> > > 
> > > Update both Gen5x4 and Gen4x2 configurations to use the new supply list.
> > 
> > I'd ask for the DTSI patch too...
> >
> I will post dtsi patch after we get agreement on how to descibe refgen in
> dt-bindings.

Please include DT patches in future series, they help us understand your
changes.

> 
> - Qiang Yu
> > > 
> > > Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > > ---
> > >  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 12 ++++++++----
> > >  1 file changed, 8 insertions(+), 4 deletions(-)
> > > 
> > 
> > -- 
> > With best wishes
> > Dmitry

-- 
With best wishes
Dmitry

