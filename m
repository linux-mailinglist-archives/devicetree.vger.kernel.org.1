Return-Path: <devicetree+bounces-262403-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CEm8FWdXgmmkSgMAu9opvQ
	(envelope-from <devicetree+bounces-262403-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 21:15:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AF5FDDE693
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 21:15:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 136F4305DA52
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 20:14:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B8C3367F3A;
	Tue,  3 Feb 2026 20:14:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="S642t2iU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ehXSC3CE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4196F36A00E
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 20:14:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770149692; cv=none; b=uHQvDfK+8t1dtPuUWFA52cZZfG6nv1c2W3dPgS+PkAUM5leMEIexwVG86rkwWBum+m82aXnJD1JVgtu0y6AgrHmD5rFheaKN6h/DsexBoSuCzEGFaGjG/j/AT4TrGQCrwh9PWD+ifvF2XuNPMYHCfXWbcSeZzv3Nx6QudKvjZkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770149692; c=relaxed/simple;
	bh=g113ydTAZFm5Rr7Tgio7NJEkf9sT8TK/EhTbZO2mXmo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Q+oo06TBYIBXC21yEmEM4AWIcSUq3LHma3/dmWg+uScIRc3h4j8CZViFDy5GESTH/5lsi43NysR88XAKOjeD94BLJM3fUnI85pQGw72k3K2nj60kzaALLXB9WuNb70igU2UlpseZKO4SF4mv3WDuF0MUNwXe2A6l5UrNq/RV0TY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=S642t2iU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ehXSC3CE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 613Ilt174122913
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 20:14:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CtW+VYHRGzBX6OvEGMQr1befivCX9DAV1/zlI/ei+2c=; b=S642t2iUR5AEQuUl
	A9Wmq7DQIIixJkvaZOFqUe5Q9d1+7m2lb5eH8yJDOl4mLigYGuBRzP6zkhC8XqRY
	QmrvzlnTKGfqi/KBx4xhIfZKVp++naan53+qMz1CvdqSxc/Ew0FzePd0i98vASuu
	YqIF2U+JUmFGq0o9jz2v+Glr1tbC1Q5maGsi7J6ae1DqBLLIoiMVHJWg9dVq4yAZ
	rQUyQ556ofF8ridKdQwWLmYMUy1N+0dLUGhbSVeArisfoQcI3eTiSO8uBtDKt15P
	wes0p97ppVDPknIyLP0fBWBdwiPwdT70xhglEbDRE66F3FMMtsnjnQkWPbHrIRJx
	qz7TNg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c3kbkh68d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 20:14:50 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a0f0c7a06eso210615ad.2
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 12:14:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770149690; x=1770754490; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CtW+VYHRGzBX6OvEGMQr1befivCX9DAV1/zlI/ei+2c=;
        b=ehXSC3CEPu9QH8FUtIN+Q9HsyqyE67VYR6Zv86R9zrgWoneGWal90U2tkHMSnO0lbo
         8mY7Y6KpINKZMwosT8xxmJNWTn4mB1DmeKZumaxcu/OS4tgEerkXXgd0zlq2rxEfbCgJ
         6mLgAXXdFW54HYd4Xn46dQeYZVQEzT2HAyukX58GSw3slH+9KhL/v6tT+ym/y1G+U/dn
         YB4ID8ti/rX2fuIZqVcJibD5OWFwxqz49LR3/06o+HhixZZ+4uvfZU34VSH1O6aJYqpx
         2Zmw6MhXxF9pPDexSp6hYWeL52H06kxgJZU2atAo1W+8YeyDpMAJ+LsAtJxIoAAKvUnA
         YPLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770149690; x=1770754490;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CtW+VYHRGzBX6OvEGMQr1befivCX9DAV1/zlI/ei+2c=;
        b=mf/BnehBr89b9mxX3Jn1GSYX67zuRhL9GcVpjn2hpxO/oPlIOzAa3d64uk9yFGEJgy
         4qQ156tkaLhNrr0UIdkIQacyAJu5UVTh2OAiK6k9LE21po88uB1Bvc5BLcEqm/BZ6b99
         5gyMjzqOVQEi2wkq8NkSQnd5NGiAZPx1bMknIN6IlvEynNxx9aPohDV2TGVp77aHFaZy
         MUSRS7wGxkHQRPCz4YWD2J+iAO+DGMTA8d1sqJpFQ8IhxSjUQdfvNXqU4jr6MOlKGjlH
         w7yRn+CNCpqQ9NqDrJ4eyKPWBi8e9La7wWIMy6IHW3FHEZoxID1UEAdmMwYKKhMtkwv9
         2pbw==
X-Forwarded-Encrypted: i=1; AJvYcCV/cmS88jwzEHFbuXJ2DIHv+zj2Vn6ygSTqse/KgaocApaPK/hKVp3O9xqdEbI+Nlaf8qxjqboMusht@vger.kernel.org
X-Gm-Message-State: AOJu0YxM7rm0lx068XXrtnLSsVvXaw02//S8xqYW/ioSHGp/acYyIRQq
	PU4RZcsPkzBtNvvm6UUjxRBnxM8bHtqFaWaS18OagxfHGc7FX0NbwW+x9voL3kN520RMeW7B78O
	Pvx3cmYvK+Qt0UCIOPvuBU2/o/PF5ZpNffuQhKjT9GEVsvdutMzdqvMJsDxGY6/2A
X-Gm-Gg: AZuq6aI6upFtEEIDYH6PgRp0phJgWrFwdNUSvxFmewn/sIH1QxeNZzoWQi5/E648qqr
	2w94lvehX8jGcoXlkrwz4iBs2sMbLxFQVKJ/BYvxQgblXx2bjEYrSoUYMuljFHtQ5hUQt54GKLf
	nF4ojcdlptvHcHkAc1C7gxI+VNLka9rzem2+IyP/XmCpyb5efnvhoXqjWV8e0otg03U+6ykP4h6
	eoEzYAFN2rqhF54P38LkdP5QDhhVXtxf4rJL+bvKepT0jfyChKETACx3kLMp8JBhrCtd4VfxeJj
	TpuHBY0g2FDogbuxyDVJakQSeYO+9fUctFlwwevPeeRXHdMpYitIH3w7ieZ7TK7tu4PZYC6mU+d
	5cRNI39lfsFydbFrKpkG/t5pds7wARJWhgA==
X-Received: by 2002:a17:90b:3b89:b0:352:e3d1:8d69 with SMTP id 98e67ed59e1d1-354870b1bb5mr334090a91.1.1770149689809;
        Tue, 03 Feb 2026 12:14:49 -0800 (PST)
X-Received: by 2002:a17:90b:3b89:b0:352:e3d1:8d69 with SMTP id 98e67ed59e1d1-354870b1bb5mr334077a91.1.1770149689371;
        Tue, 03 Feb 2026 12:14:49 -0800 (PST)
Received: from [192.168.1.11] ([106.222.231.57])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35487131849sm97904a91.0.2026.02.03.12.14.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Feb 2026 12:14:48 -0800 (PST)
Message-ID: <86cc659d-f5d9-47b0-8134-6a4b11c99434@oss.qualcomm.com>
Date: Wed, 4 Feb 2026 01:44:41 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] dt-bindings: display/msm/gmu: Add SDM670
 compatible
To: Richard Acayan <mailingradian@gmail.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Rob Herring
 <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20240806214452.16406-7-mailingradian@gmail.com>
 <20240806214452.16406-8-mailingradian@gmail.com> <aYFJcxOXWpuuC41I@rdacayan>
Content-Language: en-US
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
In-Reply-To: <aYFJcxOXWpuuC41I@rdacayan>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: QnBT-o44OIvliYrL9rWuq0hDPSqqBJvj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDE2MCBTYWx0ZWRfXzalBDs1Su/UZ
 MJ8RrfJcWXaK0YFz5MK3ONzpa/MEZJ/f9aB/OJtgyACnloxGXXSdtgJDf4sIUF71q5Iq+MaL8a6
 BWWyPIslkvVD7JEJfrCNwNsyZ0HqrrK3QGg6PGViqYu2tElHwSdWN+siZVMiEgpVpOJcGQW4wI6
 ZEScA6PPiDv4ZhzMxploJ33ov74cpX52T4SZpRmxj/CGSjnFGNYD9rUPU+9fvhXSLOKPDG5VLgh
 eKM5BlydnQjGRraeLkz16i7F4dKVasFSn2fb08PdF9RW65ZVYjJcVqO9sok7aTxiL+JJHVbWkm7
 ytuo0XQGNYgekiFqxwcGhiKptdu/jRWuA4ThvqYT5R2uGCzZlnB5HVGQtVche4cTpsfZcf2A6u7
 e1oW5ItoPJ6/3WoPXAVx54Y/mo6t8q4Ll0kGDyRofIr0xde1OGwMbBv5meBaz/QdrOIVI/axSbT
 YdbQuIJ8Jb/vEOwby/A==
X-Authority-Analysis: v=2.4 cv=BKy+bVQG c=1 sm=1 tr=0 ts=6982573a cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=TQVzCM6xFy0bRFPZzaP6Sw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=pGLkceISAAAA:8 a=KKAkSRfTAAAA:8
 a=lqJ36Ib93Mf7KDR35b0A:9 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: QnBT-o44OIvliYrL9rWuq0hDPSqqBJvj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_06,2026-02-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0 spamscore=0
 impostorscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602030160
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262403-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,quicinc.com,linaro.org,poorly.run,somainline.org,vger.kernel.org,lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:dkim,linaro.org:email];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilpo@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: AF5FDDE693
X-Rspamd-Action: no action

On 2/3/2026 6:33 AM, Richard Acayan wrote:
> On Tue, Aug 06, 2024 at 05:44:55PM -0400, Richard Acayan wrote:
>> The Snapdragon 670 has a GMU. Add its compatible.
>>
>> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> ---
> 
> Ping, the contents of this patch seem worth including in the bindings
> but I haven't gotten a response to this patch.

This requires a rebase, most likely. Send a new rev?

-Akhil.

