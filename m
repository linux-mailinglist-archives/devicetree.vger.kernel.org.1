Return-Path: <devicetree+bounces-267144-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id PdIbGJ1CmmmYaAMAu9opvQ
	(envelope-from <devicetree+bounces-267144-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 00:41:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A615C16E42C
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 00:41:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D5A643025910
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 23:41:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3881D30FC34;
	Sat, 21 Feb 2026 23:41:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hOIHBZjj";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iTjeq9q5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A98523D7F0
	for <devicetree@vger.kernel.org>; Sat, 21 Feb 2026 23:41:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771717274; cv=none; b=RypsP/dXxUtoLlWpZPUamMRW6pdwvq1gi7Ik/1b2kIcSizUdFSexjFmriKbpbYBflbQxc1cG2GEuseS+u3HxFklgw3Ujq8pMO3LBd8cXnG2Yfq+DGN9qSMyjBeStiZxx5UfnuxJsgnWfchNekTLeaK15/OgpiLdGCeUkEvPLtYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771717274; c=relaxed/simple;
	bh=Pyh+CDw68qCt6TDdXdAGsX5fMpUQS3Cpu5PIrunWYuQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=u3yC1lY/Cj9E4mGsG53kYd14QUatqH2vK8e5/brLwz3zDrzx+bYMJfnca3s7SZNI4ZJNzKuSvEyRHgBOF++i+JEMsslSIjz4RSy/6oJZPkAeFzpvl/X4ZK7B4D0Kvz+msntq1r5IbPEWPRMOFP0zii58CGV5UHU1WYhwlhsBCJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hOIHBZjj; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iTjeq9q5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61L5EQca2066085
	for <devicetree@vger.kernel.org>; Sat, 21 Feb 2026 23:41:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zFEIv7mn9Y6fxVGOCnRxIDIi1iQJr/w/bVMyAKMhSxA=; b=hOIHBZjjayO7LfyI
	hu5WTpeEPkxwbwyIOTF1i33k8OLw0AQy4dFh4StHh5hVL9p/bwNP7UfoCutv1QTs
	f6479a+hz72KbZMUtKQ8hfDqMnNCE6gg3mqejvYPd2pFpxO6fSYT7agAphPa5r95
	NW0DVPP1qEuHEM4mvEcMpZzvAc0Hko8WsW5rAt595q/8zuj3eDEsVSHwJW/egU84
	p0pzVL/lm8X+1pTD7seVyoEHOejVmQJAg0iE/nbkrWLyc9fvHSreoyXjLOyj6sT/
	mqfwQ23EX2n1nagLJg3oOYT3knEn/8zAy2aelam9e0dp9Z5kwUunm8Fh8BdAI6ws
	dSCs+A==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cf5vgsfqa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 21 Feb 2026 23:41:12 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-824a2ca6eefso1720404b3a.0
        for <devicetree@vger.kernel.org>; Sat, 21 Feb 2026 15:41:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771717271; x=1772322071; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zFEIv7mn9Y6fxVGOCnRxIDIi1iQJr/w/bVMyAKMhSxA=;
        b=iTjeq9q5i76pLeyWQV7dUbw/qPH6BYhDSrqaLYE/DcZXlmwA5Tn7fLYJxsRa+Tv4mI
         tJLv3vg9AZ7LqtYDh0ySOmpXal/Dr2lOyn4UMTouoktJU8FDwQ6w0HgbX6HCymDhlGSe
         9LgkhdsE0hihhjLFdfGzUDLBHpDrdkZbWYYq8LmZgUKKjiVCuWkmqTPYuMAEkat0xfkg
         fbfUeUxZmzqbVAKXkQV8RBFBEpO/MJhccA9VNyQFD7D8DFye3JJCKD6jZDs6QI4CFz9n
         tKGLsVFSiSh9P3+L/jXMCKpO3M/IdMdBw/wKxN+FCnZcU3Z3eZb5DxDOLHI0ZwCfV1hD
         uJTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771717271; x=1772322071;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zFEIv7mn9Y6fxVGOCnRxIDIi1iQJr/w/bVMyAKMhSxA=;
        b=J7raZ3nls0XoECrDsP0kmPzA7V5Qlvzsv5lJ8kgYLtnLyO4E3kyKBthlzN/6+jH36O
         bbKm3l8z87DbKr6oQGLdIjtDxz5tAUmZUCGYT+iXSqXtyXCRMljZ03tbd5myGwAZ7uAk
         tz6FFQIUGUSJzy01PPx2o0lEnenYAqaV02qiNpnoQRgtgaHdgLQjFcoKanksuvxZJnSi
         hsDjuKc7s81BI7e91efG7hXxR4wMtWqZo/5PsKXdvrCCAmpSA48X+vEojQqm/5Ku1/VE
         c9q0hiJme7Mp1JXDHCMk8QYu5QcPmVSTfZItuv9F+gQaS04ss97fxjuqH5BU6cuaQi5b
         FWmQ==
X-Forwarded-Encrypted: i=1; AJvYcCXkYNODq5IMTP67mWC066aIGSO2xZ4XjO5fRyjA0F8R/2MwzqpeOFiZxtFTUNtvLBTV1QeKmt2aE1/f@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1RZdslqCljKHr2wsRKPhJN87TlhtCb+oYdmCXqUd2Fju724HD
	lY6GquvHKrwSplN3L6tDloh6qPOrdLUPJwAGVN9zLt/KqFswKlIMvAeM+oKDw0xVuoAxPXYwL9t
	rOgrPAO1Ue7BxyY1REqy9SixTAZlAcwGR/glMni4C2LG0aZ1MMlNX1vtkWm+89lP3
X-Gm-Gg: AZuq6aIbl9a5S4Y+m3/pUngWbGstzevXNRyj9fmqt10NzNahZn7w8WXskKJ+uPo/Mi8
	e4CMCmhbk1fHJiiRU/i5nEIGXXfvG+yP7GHJuGdBUDxxPH0ma/pxEZyN9Hh1GV6XYKMHV0op/Xx
	1VtyRbJMeAY9o/otRAtswV3t7kOl4F0IMH5lehkAyIbk9v1pzRyfIXNGxAGGmebmhV+3/KGPpWJ
	/BEE1WWH75fxMdfbF5wTTXx2HJuLJpsQqGGmPzItWC1XnZR36CK1c1dZzqdxEzZ+x5hNFfyPQdi
	yBSMoRamYgehTmi7OjyPDnCoVN46wmz5ql9KBL3R+FbZlgKM3e7LtX+rDInvxSf9IVJAJSF0LOm
	N0Y66QFtr/0wuAeYTiB5TF+sPNpsHT1NYssG70cdg9Bxy2VMOIh8yTQJ5wpSnH04iIjdBNYBb0P
	7DR1ZmrJYRNyJUURGfcvUi5frukunlGIV5NniM8045vQ==
X-Received: by 2002:a05:6a00:26c7:b0:824:cc6d:a923 with SMTP id d2e1a72fcca58-826daaf0765mr1766141b3a.5.1771717271535;
        Sat, 21 Feb 2026 15:41:11 -0800 (PST)
X-Received: by 2002:a05:6a00:26c7:b0:824:cc6d:a923 with SMTP id d2e1a72fcca58-826daaf0765mr1766131b3a.5.1771717271103;
        Sat, 21 Feb 2026 15:41:11 -0800 (PST)
Received: from hu-vishsain-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-826dd86c5b6sm2989597b3a.32.2026.02.21.15.41.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Feb 2026 15:41:10 -0800 (PST)
Date: Sun, 22 Feb 2026 05:11:05 +0530
From: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        prahlad.valluru@oss.qualcomm.com,
        Prahlad Valluru <vvalluru@qti.qualcomm.com>
Subject: Re: [PATCH v3 0/2] Enable lt8713sx bridge with displayport for
 monaco-evk
Message-ID: <aZpCkQnWb3zOZji9@hu-vishsain-blr.qualcomm.com>
References: <20251228-lt8713sx-bridge-linux-for-next-v3-0-3f77ad84d7d1@oss.qualcomm.com>
 <ke3xn2344ray53viwiyxfap3z22tguyo347ixic3vg5xxe4nje@juujoqxqptq5>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ke3xn2344ray53viwiyxfap3z22tguyo347ixic3vg5xxe4nje@juujoqxqptq5>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIxMDIzMyBTYWx0ZWRfX2IsxoAK8ugSV
 Y+FB7ju6tdRGQwSvJ+FQtd8aX6vdE5tN/MlLDaRssloopkeeOt8w/yLEUMNWy75buKLgHi1foMW
 nTTWJC2REE7enMGmNuMYmdFSCmy+Jybss3WX77GbC/mcMkiLYzX1ifM2RH4L2G0op4bsCCJG2K0
 Ji/uhKy+DhUgPwaP9WW0LTRY2LxFqpXH50XsXj0Tlp9chBfYX9/4nOCwOFLhp6jVmEjpq9wz5NG
 KLSEBVsbBUTblfcTEquREjquqmOFgXpp/ny1ZvIGbm1l/rd0YFxh7PS/uLQjsI+qXFAu/mFJzHk
 l3jCoEOZYxS9VXPDeZ+fvB1r+4LMKPURW9lBAk88rkWbYJ2NKHWtB4RY5kKx0ZKpbb/uwPP0ijp
 BJNBGFSSEvCEsNyBrHF1Onk2XgnMRwgwAlOrBdXbP8p7hp76XqiZHWCc8cUNOy6s/1nCIDkir4E
 ZwlQ0RZYe1HkZu16nuA==
X-Authority-Analysis: v=2.4 cv=W+A1lBWk c=1 sm=1 tr=0 ts=699a4298 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=FNfohRsh_S1gWZ89RWQA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: RPRll1BV7KisqUxnpd5wml5YhSVH1ilt
X-Proofpoint-ORIG-GUID: RPRll1BV7KisqUxnpd5wml5YhSVH1ilt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-21_06,2026-02-20_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 phishscore=0 suspectscore=0 spamscore=0
 bulkscore=0 adultscore=0 priorityscore=1501 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602210233
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267144-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[hu-vishsain-blr.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vishnu.saini@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A615C16E42C
X-Rspamd-Action: no action

On Wed, Jan 21, 2026 at 08:12:28AM -0600, Bjorn Andersson wrote:
> On Sun, Dec 28, 2025 at 07:10:37PM +0530, Vishnu Saini wrote:
> > This series enables lt8713sx bridge and displayport on Qualcomm
> > monaco-evk platform.
> > 
> 
> Please answer Dmitry's questions and please send out a new version once
> dependencies are in linux-next, so that I can merge it. Will drop this
> version from my queue.
Sorry for the late reply.
I have answered Dmitry’s questions in a separate response to the relevant review comments.
I will send the next revision if further changes are needed, and will submit a new series once the patch is finalized and all dependencies have landed in linux‑next.
Thanks for the review and patience.

> Regards,
> Bjorn
> 
> > Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
> > ---
> > Changes in v3:
> > - Used  existing qup_i2c0_data_clk as default i2c0 pinctrl and provided it's drive-strength, bias-pull-up.
> > - Link to v2: https://lore.kernel.org/r/20251219-lt8713sx-bridge-linux-for-next-v2-0-2e53f5490eb9@oss.qualcomm.com
> > 
> > Changes in v2:
> > - Configure DP PHY supplies and DP pinctrl
> > - Configure in/out ports and connectors for lt8713sx bridge
> > - Use correct base commit and fixed build issues 
> > - Link to v1: https://lore.kernel.org/r/20251120-lt8713sx-bridge-linux-for-next-v1-0-2246fc5fb490@qti.qualcomm.com
> > 
> > ---
> > Vishnu Saini (2):
> >       arm64: dts: qcom: monaco: add lt8713sx bridge with displayport
> >       arm64: defconfig: Enable Lontium LT8713sx driver
> > 
> >  arch/arm64/boot/dts/qcom/monaco-evk.dts | 89 +++++++++++++++++++++++++++++++++
> >  arch/arm64/boot/dts/qcom/monaco.dtsi    |  6 +++
> >  arch/arm64/configs/defconfig            |  1 +
> >  3 files changed, 96 insertions(+)
> > ---
> > base-commit: c2469dc74020684c2aed314701d999cc37c95717
> > change-id: 20251120-lt8713sx-bridge-linux-for-next-30838c5a2719
> > 
> > Best regards,
> > -- 
> > Vishnu Saini <vishnu.saini@oss.qualcomm.com>
> > 

