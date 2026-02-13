Return-Path: <devicetree+bounces-265456-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kE6NOeJoj2lHQwEAu9opvQ
	(envelope-from <devicetree+bounces-265456-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 19:09:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 01EAB138D36
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 19:09:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 66427300BCAA
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 18:09:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65341285C9D;
	Fri, 13 Feb 2026 18:09:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eMwhsuV/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BEsf/jos"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D57273F9
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 18:09:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771006174; cv=none; b=HZFO6EMgT/c/HUZESUkGM5r7s2PzmHr9dbyAif7nrLSlqjvjp9jBblEWvs7oF7k5L2uEx3ZEaLJXqXGVKCDZ5IP9yrVL+fn6G9dE2oBPvenposnqLErMyxeuUodsYtNhq437x4IkJ6EnPuJtXeU1GfW4X8Fi0byHo9PySKr2uLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771006174; c=relaxed/simple;
	bh=6nC0IkKFDCY65BKTTX1/6E0atu61nvcle4tD9XEVwd8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=adwSdodhrE723Rt7F3D9p+hdE+9xl2Qx/VKXKf5yfTDipZm3gfBD9xujKVGQn6AEdGc/a/k+yZcih8uz7X8KlCvugqCiz6XTfRg24MPtioQ1AnMhNQL9LLKnafZBmnyujw4nX5LyD7kf3wP4Fdd3gO8hIpHxdKjYA1hIO+6gLJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eMwhsuV/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BEsf/jos; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61DBVxVq1756703
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 18:09:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=wnIvEMq2lqqL1ydDe9tV35Bd
	iKQQyNP7fbnknKGOgrM=; b=eMwhsuV/qcvE4VlI8a5VRwbzyGVqQveTej1zXbdc
	OI5/SDujiqxDiRQGbVziwRqwpNLe64WOyoMzFc4fDC8qiMHstugaXsU6eGkh/KVv
	MJh2WWocQMzjljN9UM4aaX2o6qKANVTDyoOJXpYhGPJVv9UY7mQCh4ulGr+oEVA0
	/oPni3VJ9+URIF1OksoTNNXGaA0XyIGNHFvbpWP0zIVPQ0DyV4lOHARZT/FKq8VL
	juLTgqJtFlvBO9RKeZa+REntyPPgghryWZmnjBkF+AdEHTgSHiisRi/IgkwTKZ6M
	r2NwxZuqw3F5r3eALL4g9FRJftBJBHe/JVTyVdK6TcAchg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c9mb14nwx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 18:09:32 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb3b6b37d8so448681685a.3
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 10:09:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771006172; x=1771610972; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wnIvEMq2lqqL1ydDe9tV35BdiKQQyNP7fbnknKGOgrM=;
        b=BEsf/josuln/0XJySKb9TboBQyCWKGPZuHGS94jBWqzyox3jl6JcJJoVW5afsBZbjk
         T+LxQIZD45t+hlwWqZIVTy6jrrtLhSw6O7TmODC9mtWHOy7B8Q6NRk3BePYQbblANpsR
         HCloOp7vURcj433IoB+PSwTfLRu6JrHQV2WQ3bKXyrPUK4k2vgEuJepQlv4jdM40e1rj
         VbZ6SK+PmMuZd8ODX8WfgBhIneEDnioXVJS+hN7GbSNajFY/NHnxd6DWpQp4ass9TBC4
         40NZ3mcEbEznSmRpb3757s/Fi8elYxYIyoZ4pD0LQl73PaST16Awt5ac8rUfvGxmvi5o
         qCig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771006172; x=1771610972;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wnIvEMq2lqqL1ydDe9tV35BdiKQQyNP7fbnknKGOgrM=;
        b=JwI5cuNZl9BNxmf4Lfn0+V5kxTRX3RVfQdnohZKOqUFphJKreVLnPjrN2pbreFWBGG
         9mbwvHq+TuRNqp7XA6URYmU9Uf7WigsLGS71+YQ/1Eus+LRw/DxYdXX19IFSYWkS2Jab
         VxD6GlycNZCLTGxJzpMAnlTZkKOLk57WwC70jMsW24DJoHjPZQRG1sbPm9soIlQ0Kh5d
         dbCbtNLa77cp6SFG7z+QA2lPKhp4UXfAs2QcFHDvSeGfVJXbTY50amV8ZN9eHml5jDnb
         E+8ZYZoPP/GjwK32hNEarHkGOH8Tck6WxVpeVyG/qjg8OiymonGtxgp31pSKkbdcASKp
         jRUQ==
X-Forwarded-Encrypted: i=1; AJvYcCU7RcymjGk9OtB6oxJYOb2+xGJNaQwbdITRqS1fTjU9T8xFzR2Au0+jjkeG7SxR7g60q1DN6Typs333@vger.kernel.org
X-Gm-Message-State: AOJu0YzclcjxiaNKU+atG9ts1aIjhMgfw4u8vuu7PcnNvQKNvtEa0hhg
	Kl+unbMImCiDcdyrDqQMvh3FVBWmGXmQ5VvFjLzAqDfK7ttSQkFnt1u2lde1vT/P+RynR7px2tS
	CRiR+4+DmRSFS3W5/2uatPw5+e+gPAtzIv8XwFngngMaJJg683qt+kS17qX35lSqn
X-Gm-Gg: AZuq6aJrwzvQsxzYL0AFyGYSLpvnH9PdifpXRlE5WteIHqyVuRuD4cAVxrYQ4synrt6
	fN+s5WyolAcaSXBsfVZ6QNUiBi/dwJTgeZ5fcPD9zeZbjp13SnkyXJN0fbX/I/3vOsrCL+A3EJ1
	cwIIfWATmrSjPKhV2Fec3fICZjyoN6BvQQMZoJTEnU+/5VGrnb0wY92Hrtjb7kXwQLxSFSMMrrv
	/euaEjUP4rbTctnNtdsFFDEZMHzmVIT8cJi7ceg3XGAEztslSaAHDVwUb0R4JwySllOnDVy72fp
	LOD3LXsvtfbwifZnxQiPGSpSBahST4GGWpB+wzaNCmQ0gYpjCBjmzA3YqyqVMFLrI3pjqJLsLbc
	ASdP0xU8GW3zprS0nnIoMM9BYrJFILMUw0yJ8zwXPuDqn3TJlOIwn5HK7FqOMAgOCR9X58e50T7
	1XUsHPqMOIDy9TNFwSfzu76V667TJK+t5YCJI=
X-Received: by 2002:a05:620a:4629:b0:8c6:e225:2671 with SMTP id af79cd13be357-8cb4245fec1mr317256485a.48.1771006171848;
        Fri, 13 Feb 2026 10:09:31 -0800 (PST)
X-Received: by 2002:a05:620a:4629:b0:8c6:e225:2671 with SMTP id af79cd13be357-8cb4245fec1mr317250385a.48.1771006171320;
        Fri, 13 Feb 2026 10:09:31 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e5f568742sm1698351e87.27.2026.02.13.10.09.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Feb 2026 10:09:30 -0800 (PST)
Date: Fri, 13 Feb 2026 20:09:28 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Richard Acayan <mailingradian@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        yifei@zhan.science
Subject: Re: [PATCH 1/6] dt-bindings: arm: qcom: document google,
 bonito-tianma board
Message-ID: <l223eppwztijuzg5plro5pfphlrsy4amouytri5vlzijwwsjio@wdkwscirvood>
References: <20260210023300.15785-1-mailingradian@gmail.com>
 <20260210023300.15785-2-mailingradian@gmail.com>
 <06503bb7-0d82-4407-815f-6f3851069041@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <06503bb7-0d82-4407-815f-6f3851069041@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEzMDEzOSBTYWx0ZWRfX/L4J5t1aWYhD
 bmoL9K0dNEF+gRKHke1RUgQnuFKk4EWLrZP8B3UF+9eKhWnIM1SlqoJ+uWAL252vS5suSVMq5PK
 MkSHUidBHOuWm2YXLlocfgag2Vg7m/Tg5BAwzzJagMfPDyHWfYkWblbnX5wwT5jGGLXCldByEOk
 0O3BJSwpBDaXRwUNAd+0bXpqwnhkt7lfi31S68SCcVPF+ISmJU4xnj7ZCfSly2Cow35PCQUFoXd
 vnCNA9crH8NpkGfjBKSxvuclmSTLpQM6jPK8OeAwmogRCLQG8ZCp4DqHeFJ72gojrgEK4W+qeOT
 dWUJo8cDPXmbBLGTIxPpALSyC0kg4iVXQkSuImKByKT8edLu+obloQQVaDjp1h73y3PCQ6lYB6l
 pjnsrexkEil70dNM2vkLW2PKt4YU2B9X3r1rmJjnHksO0biwsEVwnEwuZUHerM1ev8ppAJO7ofa
 mJ7wLFCGi2SIUdljkdw==
X-Proofpoint-ORIG-GUID: KWGZP9oFsB-XSL_ORXH-i50dcGr0Wcqu
X-Authority-Analysis: v=2.4 cv=asC/yCZV c=1 sm=1 tr=0 ts=698f68dc cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=XJJW21WzQjcAiImwANcA:9
 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: KWGZP9oFsB-XSL_ORXH-i50dcGr0Wcqu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-13_03,2026-02-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 priorityscore=1501 suspectscore=0 malwarescore=0
 impostorscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602130139
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265456-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,linaro.org,linux.intel.com,suse.de,ffwll.ch,ravnborg.org,vger.kernel.org,lists.freedesktop.org,zhan.science];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 01EAB138D36
X-Rspamd-Action: no action

On Tue, Feb 10, 2026 at 10:12:05AM +0100, Krzysztof Kozlowski wrote:
> On 10/02/2026 03:32, Richard Acayan wrote:
> > The google,bonito-sdc board compatible represents the Google Pixel 3a XL
> 
> I do not see sdc anywhere in the diff.
> 
> > with a Tianma/Novatek NT37700F panel. Document it in the bindings.
> 
> What is bonito? Why bonito is compatible with sdm670?

bonito is a name for the Pixel 3a XL devices (like sorgo and other
google names).

> 
> Best regards,
> Krzysztof

-- 
With best wishes
Dmitry

