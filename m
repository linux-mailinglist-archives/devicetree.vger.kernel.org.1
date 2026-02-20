Return-Path: <devicetree+bounces-266874-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IBNsAeEnmGlqBwMAu9opvQ
	(envelope-from <devicetree+bounces-266874-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 10:22:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 97FF7166262
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 10:22:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5210530055BD
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 09:22:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF80431AA94;
	Fri, 20 Feb 2026 09:22:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KJqGkoD+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KGQrVIW8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4B94313E1B
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 09:22:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771579356; cv=none; b=Upm0uTaoh3YCOGQ2aCD4ePkcqEGcRytReCmnXCyn9KjjLaohlvkU6oustJyLbPSNVCQf41woinTiIJcifj8oGg2NnWGtaTwAXn4+L/KNBf9njvwVlo/il2c6Ty0iBubDMHth6bzKTN+943zcPt6rwSSd1lw1m+FjreC0X8GHHVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771579356; c=relaxed/simple;
	bh=cbH0jdHmo2DcpQSbLZTn2saaw2S9yA80pf3VFhqCKdc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uQfX7sY51FOFg81cgSHLb2wZTJ6SxKIMPL7UgiUj8BOQu/2pdxEo1uMkDZzjKW6fn5YG1faIqybNc1cfZZpif6FdkqTygmyGug+QDX6iMeUgwu1HEKi/2yHaauyw36T6UK8RD7NaKVZXXwtma/B/vum5yTs40I6bGtBFqivpsdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KJqGkoD+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KGQrVIW8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61K5RxWO1805795
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 09:22:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fcsW1LF/JcPb806BA6vk9bWg/mVbQYnz26kHqfxsAS0=; b=KJqGkoD+X8OIYIic
	O6Qp/lY5uSsUpLQKovlfWs+VruGEkhqVmqrAC8q7hTCbmKHB4XXFJIGPEjm1xaF0
	AtuYRU64N5DDtjxErQUEBvsZdaSgS3dKR/nISHwqGc55TtNVEvLay77ruq7BqPeI
	/X0yKShf36dd5VjoFOy3NNnHR20/Apc1MLUpwK0PnbbQecJ3Y5XXfmj5U44T/ViU
	ijatTQbNwprKDJSYn1spzXoob1XCbj4gtwPh5tZ70TFCZM1I6/kLA1pvj29mU+42
	tAjcEuYpxlwn6oHPWOrI3hrAnpDUfY+ikdLG3C/r6NajMHj2I4og3T67v+/3TUCD
	FEPwvw==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cedsns4c8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 09:22:34 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-c6e170fa2f5so850243a12.0
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 01:22:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771579354; x=1772184154; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fcsW1LF/JcPb806BA6vk9bWg/mVbQYnz26kHqfxsAS0=;
        b=KGQrVIW868AK0QMZjiMDC76q7MVksE0bl+r9L4XmOviAEFHvz0C6LB8z6+b85Z1mb7
         PEJN/c+PzjCSyTYEmq+uPPIGEaAnnT9Bc69m6uEkmvR7pZJd2TyWMmWg+kNAuEy+fFh5
         EG4Jekk4lrUSS1MavRafix+g7bgSZ4KKCXNl+/vAnj56LiTQbpCfjXXhSCPz2g1jJc8M
         GPbhXfqFyvzZBlt9XuCHm/pRY2sZSY3qi38aOBUbRiLTlzcLhWdXVEHg2CdWG2W48GVk
         X9cEh/ZuvG9brdv/NsYFlU1E6ryqjh8nlJsBDeEFalBrvQ3+o14gGXnI423wklgkIKbk
         bLiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771579354; x=1772184154;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fcsW1LF/JcPb806BA6vk9bWg/mVbQYnz26kHqfxsAS0=;
        b=gx+EePncvH+RmnKpPiy0eM1FHdrVAJlPkLe/gZWcdQPveVgDqP+/NdASfWVFsuDFmG
         FG3952aWWv6x1JiMZsOT8X2Z4AXYpJ9u95e5YNUv1KlZtBQwB669MhMCNQJjBG6TZTvt
         ZKG9wr8uE6oIbWSpS9u0mn4RtiLAGLcMfUTvPBrgEJGl4vVI+eqFjUvH/JSnW5pUYxlD
         NZWNAnxVla6QEva8PiswPwRrjevcBmpua/7jUzwruduhMq/zMa37NsV2lMrbX2k6qh2j
         J4G6j3BbRFee7D7qtxppAmzWbStZjhDYzCw3bmsTaYvybCfoGLeDUipkGNqUU85GWa0/
         Qrcw==
X-Forwarded-Encrypted: i=1; AJvYcCUVWGKt1bZ8AGzH1ZGnvLbMMNj6sSJQHLbKlQ+BHD+UmggZ5uZIm0HiiuW3i2AMcxNmwGqjHedx/Xb6@vger.kernel.org
X-Gm-Message-State: AOJu0YzJLm38KUGmAhfFCr8m+FJ6QAg3iGoinVj7JrdDU6bSeKNDuk4V
	cFeKDQqwuFWD+nRlY4uWV1ujIVkWxomZ+u3aYJHpigtktrCQDp7/tKx6AGqtFz9cJljBrBdWK1u
	iAfIJN4WSIO2dyeISUdFR5cpV6T3gEOk6d2AnoNAKxrDxt9UOT7LSHzDV4kO64D7e
X-Gm-Gg: AZuq6aKKemUZRfaspNfc8F5HPUcgEIpfRf9WDezHDy2OIvBioB8gxOnBSrLKeNjvodA
	PGxhhBVvahwooYR/+y7IN9cHKNZ/VMnUPJzYM2WtuhSHd/mrbRvz6qi3xg4GlnMKdqEP9wj6khF
	aipohnxR2XRl2QrpuvAtpvAmahz/mjMKSTw7kMALCDcZ7eX59cKMmHL4KfTjklO+37hqFXYHNhs
	vq2egMsS+enTPxKCOnfsjiX3zZ6iIx3GMqdVN1sDPIpySv0P8DIqn8oGTGqScQ9tkH0G8OFDn07
	Kr/jc6/JSm9fEqBExBJ/lGa3toNi5UR5HWgSjvidYm5+oYgeggnLuWASaQXd2gj82LVAn4qnXb8
	+p4x7IKh+Y+efWcwbWPgve/r0ZzwwzNB0BGRJcC1XGOsvbq1YT/jqq1bZthMTLJKAb+T0ev/sUQ
	NVSLcnFoM43LjA4oYnkjWzbJgL8kURKftAnS3eHapYlw==
X-Received: by 2002:a17:90b:50d0:b0:354:7b96:1304 with SMTP id 98e67ed59e1d1-356a6e3dcacmr15691188a91.0.1771579354239;
        Fri, 20 Feb 2026 01:22:34 -0800 (PST)
X-Received: by 2002:a17:90b:50d0:b0:354:7b96:1304 with SMTP id 98e67ed59e1d1-356a6e3dcacmr15691156a91.0.1771579353789;
        Fri, 20 Feb 2026 01:22:33 -0800 (PST)
Received: from hu-vishsain-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3589d811aeasm3253607a91.6.2026.02.20.01.22.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Feb 2026 01:22:33 -0800 (PST)
Date: Fri, 20 Feb 2026 14:52:25 +0530
From: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
To: Markus Elfring <Markus.Elfring@web.de>
Cc: Prahlad Valluru <vvalluru@qti.qualcomm.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Simona Vetter <simona@ffwll.ch>, syyang@lontium.com,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Prahlad Valluru <prahlad.valluru@oss.qualcomm.com>,
        LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 2/2] drm/bridge: add support for lontium lt8713sx
 bridge driver
Message-ID: <aZgn0WaVv9T3hLca@hu-vishsain-blr.qualcomm.com>
References: <20251228-lt8713sx-bridge-driver-v3-2-9169fbef0e5b@oss.qualcomm.com>
 <91290a53-8f59-4138-9899-4523d25e1cff@web.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <91290a53-8f59-4138-9899-4523d25e1cff@web.de>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIwMDA4MCBTYWx0ZWRfX6z1qXanBzDz9
 veWgVi/YJMce+NPZMUMmsMgJsRrDvOAYTADn9whkuNQ09pXHabxDgohMfdChe2X++GYII/TMZTq
 pI09z1IAc9iE5uktbC18Ld6R0fKsb4rLdO71cgV8uPPT7hHTWEVCYEs2uufMFADbvJ9P5ktsFY0
 9+1usHKyD6CKFAYUsJPjnMzOD8oI7rJacKTGEJXkZiIhk+vG8bS71i2VWJ2EogPP3gFAsLdSWyL
 94XAQXVvUnfcIuK+9geR9aPCGaHWUK9MyoeU1Ax9SOnCDJmY68cKOsaDu+GLgzPxUQFQ1U3KRBf
 +DGzTzse7Mifz+szsct/fvD+3jKnpSzOP5t4hYi8XwyncWPbPCao052Xfrr9UJa4Ynq1MGKR33Z
 j3o4a3lgvKhE6dtJdUf8plDbkD/6Bs6by79HF38XiEVUjY8cSKZIGVBt3VtPbmVeBogEtxK68u5
 AyF/2EqGbP4j05J1iCg==
X-Proofpoint-ORIG-GUID: 5QwK9z59eOISiRFvSdaqKNUmSfPHeRBP
X-Authority-Analysis: v=2.4 cv=JsD8bc4C c=1 sm=1 tr=0 ts=699827da cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=P-IC7800AAAA:8 a=my0msLyqr9YCKrkcl6IA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22 a=d3PnA9EDa4IxuAV0gXij:22
X-Proofpoint-GUID: 5QwK9z59eOISiRFvSdaqKNUmSfPHeRBP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-20_01,2026-02-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 spamscore=0 clxscore=1015 bulkscore=0
 impostorscore=0 phishscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602200080
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[qti.qualcomm.com,lists.freedesktop.org,vger.kernel.org,intel.com,kernel.org,gmail.com,kwiboo.se,ideasonboard.com,linux.intel.com,linaro.org,ffwll.ch,lontium.com,suse.de,oss.qualcomm.com];
	TAGGED_FROM(0.00)[bounces-266874-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:dkim,bootlin.com:url,qualcomm.com:dkim];
	FREEMAIL_TO(0.00)[web.de];
	RCPT_COUNT_TWELVE(0.00)[21];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vishnu.saini@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 97FF7166262
X-Rspamd-Action: no action

On Mon, Dec 29, 2025 at 01:40:10PM +0100, Markus Elfring wrote:
> …
> > +++ b/drivers/gpu/drm/bridge/lontium-lt8713sx.c
> > @@ -0,0 +1,682 @@
> …
> > +static int lt8713sx_firmware_update(struct lt8713sx *lt8713sx)
> > +{
> > +	int ret = 0;
> > +
> > +	mutex_lock(&lt8713sx->ocm_lock);
> > +	lt8713sx_i2c_enable(lt8713sx);
> …
> > +	mutex_unlock(&lt8713sx->ocm_lock);
> > +
> > +	return ret;
> > +}
> …
> 
> Under which circumstances would you become interested to apply a statement
> like “guard(mutex)(&lt8713sx->ocm_lock);”?
> https://elixir.bootlin.com/linux/v6.19-rc2/source/include/linux/mutex.h#L253

This function holds ocm_lock across the entire firmware update sequence and has multiple error exits. It is therefore a good candidate for guard(mutex) to simplify error handling and guarantee unlock on all paths. I will convert it to scoped locking using guard(mutex).
 
> Regards,
> Markus

