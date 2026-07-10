Return-Path: <devicetree+bounces-324239-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Em5ZBFWUUGq31wIAu9opvQ
	(envelope-from <devicetree+bounces-324239-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 08:42:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D26737C8F
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 08:42:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=gZTFp1Iv;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b="W5Fn/AB2";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324239-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324239-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C3B44303F67B
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 06:39:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1643D3B47E3;
	Fri, 10 Jul 2026 06:39:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50B183B3C10
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 06:39:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783665596; cv=none; b=OrJvXXLL7cpxnISM5CSGMK2nXfpym+VmGmm6yWXdymxwsoANHnniV9fydyMwBMXkoBroPuLVH3Xa7BITDGG026wpfK8GSt5R8fiV4t1gPTy/7pXWS85uhdn+2qeXnXWmWXNHOLehMDE/JVsEV6na3OukAYdfIFs+KSA7keMM7zQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783665596; c=relaxed/simple;
	bh=TNDjHf72eISjAnYEKoRmCJwrMZELxE7thLNgJ+GKkIM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PnBixYjoIqljAbhFgqobRZZNVbH3AEivQ9QUhT8jsW8nSBgZAsanrXRJGGMGbr9NMWtbYxgCYnt7pyR/gLkcAvI6XhFNhKmFBKoIWFYw+dMPWLynY9uxac0Bp5cLa3DX585vp+K+mYTHWUr6d8cIgJHG87I9xLCPVkyPQVuOxQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gZTFp1Iv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=W5Fn/AB2; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66A3nfmw3804222
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 06:39:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mna/fkHWXIKmpcsofgqqR3rI9v4BHPRnWlK56+0Y68U=; b=gZTFp1IvrZzl05vf
	uGsK7rLvuZzj6RpVt2TM27INOrnzsTTB4BWi7X/Do0lDECwdwp/vjDwMD+BnsPea
	exBXG4rU2LHRJa6XYjRXPrkKD0nmql7p2jRGjjvnjXchyvycUIIikCgRpNHcmKbF
	uX4MGscAJ68Kuc6BXWJt/bLV9jXqBxr7gcREeVQYncY8WgoeHmuc6A7mr+SzJHr8
	RAjDCvI0R1+Z+Q9YPNR+XISb19t1zrBq7kJQbGkI0X1aDDKfwiXoaJd9wwRTBLga
	i6/lN6ou8uPvX89G9e1yU07H01vQ7zpNxODBi/wu6fiTCyJB2RJ4cT62nXVqn8yd
	1j8mvA==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4faf5mtweh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 06:39:53 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-c88aab7c1d4so606394a12.3
        for <devicetree@vger.kernel.org>; Thu, 09 Jul 2026 23:39:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783665592; x=1784270392; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=mna/fkHWXIKmpcsofgqqR3rI9v4BHPRnWlK56+0Y68U=;
        b=W5Fn/AB2VyVl9sKDpF2h4/RwIm+M9UuqMkpV2o707UOKeEmNXxKSLhA/PCXCbx7xpF
         0fI6k4zLQShzIySiHptYQen+mGf7hVMmpZi8o3ylooWpd1evIhtFfbxPFYrK07pqfZMB
         qxlTGU5PfAi9PnHNwmWDWJZPK3gTD6qI6TzC55ib7fkByqdn3zg2k1h3foFwv9qZN9VB
         fy71x082paoMiHVds97K4rp/UiJiSK6GYFYuA9IYBSjVEbpoNs5lnjhhhr/BOokUuCh4
         UZtjwQUTDBew2/OwoOLVbFp2wLY+GvrxKFr6J7KPaQmgznARWAIPL1RfK5n2/vf5Fug0
         8lPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783665592; x=1784270392;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=mna/fkHWXIKmpcsofgqqR3rI9v4BHPRnWlK56+0Y68U=;
        b=ITSMFkaOjmdkvTeEWSt8AeDOM4If9/wtOXFJiRGDsf9dovvKfpQ3TW0U+u8bAuT9Fh
         0rhpAPactlxipw3yToIISKbUnmiU9Sz15cmlRKKua8q6cPJo6cRWAH4GSNp6UJfNk1bb
         xbhfMhuzjI86s9u/fagzpUmHedMVka/NWR9grY/7sRBhWSPoi3EQjKZUiUGoGZmwNtjY
         dXXx795PuvA/lK0XCA4SErm/6ofWxy8ZLOVr4ryPNlmiUvd9ryTkX2IWO7bRfpRxNOdU
         qBGrk6AqmR0zCvkGq+tJQbZsT/dimFR2emIqoi+QQuLRcS31me9z8znDNl8USygTy8i7
         kz1Q==
X-Forwarded-Encrypted: i=1; AHgh+RrPN0FKnkAIWtlq12eAyH1CCYKX6H+ugU2eHSxRxmfdp/u3l0a9owzuwjdB9oda8uuwqg2YY/a5BbWE@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6S3DvZ86w4xdl1WVmO6lEdpkb1dOnGa5JH/8U3FvFR7XSPJ41
	5M34m7/1qtcTxktbrVqc8UFyfNOlKQ0ckPkcS/hPD8x2XquNQvqoGBqALfT3HUtI+l11McBv32e
	ofMe+XJUm0/jFnnrqbkzQwl/BHsuqqUGcSAS3EeJ3QjfD1EEpsLcHst0FogqTiDR1
X-Gm-Gg: AfdE7ck1RcbzjlzTZLi8OP6lLRVqh1/2xJwoiChg1EJUtWiZyF/MYqzusPzPUl0Yc4W
	oKzx0+uo4DHEuPWWgZ0UnhFR9AbeT+9inaOOWwAdHhbDVYeYu5ZzJJ9U679CK32eXpzNX2APpVh
	DyPOUX4Z4m9IqA+NbGWjbPlshW3lgWV0ZnhPMQexUdZgvN/EBZXNbe4Ym1ob4vPt23SqSm3XD6s
	gXme9Lv4PYbBglKOKDDz1gj3XwRVW9nEdqUvZRtiFtHwiMoqtyZujPr2uTdcHW2qG15xpjpGi1G
	lQfKqtfa4y9YUHkL2I1mPrsVHmZbUxNkE1Ond4lqyyPi4g44EI+BCF8hQlY/xGIOAUwzhMwfHnk
	iVP/Sjf4I+OxMOGd1/VBiMJcyoZNfJXt606QuMhSFQPCmFrMGF34+6XyBT/7Z
X-Received: by 2002:a05:6a20:6a24:b0:3bb:2883:a723 with SMTP id adf61e73a8af0-3c0bd0f9e23mr12570896637.35.1783665590731;
        Thu, 09 Jul 2026 23:39:50 -0700 (PDT)
X-Received: by 2002:a05:6a20:6a24:b0:3bb:2883:a723 with SMTP id adf61e73a8af0-3c0bd0f9e23mr12570855637.35.1783665590233;
        Thu, 09 Jul 2026 23:39:50 -0700 (PDT)
Received: from hu-anancv-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-313af819732sm3578090eec.16.2026.07.09.23.39.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jul 2026 23:39:49 -0700 (PDT)
From: Ananthu C V <ananthu.cv@oss.qualcomm.com>
Date: Thu, 09 Jul 2026 23:39:44 -0700
Subject: [PATCH v6 3/4] arm64: dts: qcom: fix SoCCP memory mappings for
 Glymur
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260709-glymur-soccp-v6-3-16f70227547d@oss.qualcomm.com>
References: <20260709-glymur-soccp-v6-0-16f70227547d@oss.qualcomm.com>
In-Reply-To: <20260709-glymur-soccp-v6-0-16f70227547d@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Maulik Shah <maulik.shah@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>, Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Ananthu C V <ananthu.cv@oss.qualcomm.com>
X-Mailer: b4 0.15.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783665586; l=1207;
 i=ananthu.cv@oss.qualcomm.com; s=20260327; h=from:subject:message-id;
 bh=TNDjHf72eISjAnYEKoRmCJwrMZELxE7thLNgJ+GKkIM=;
 b=nTYSLoBrORkvTjxlyrSovaqsBDKV9aKIq6/mUJ6OImquQW/C7l2zIAW0N2igzBG035v3RGL2P
 b/Fx8Gkw9TrAbZCfi/CofNtexbsF2r6olmX72R6XWWTr4EFoti9SwDE
X-Developer-Key: i=ananthu.cv@oss.qualcomm.com; a=ed25519;
 pk=Yyv4ldZGagB5zyqtlYRdUX/L9FZ6y/INQAXO9L3wfl4=
X-Proofpoint-ORIG-GUID: lzTHkekQ1oAhlihJ_LB-vOORDFVjSNQf
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzEwMDA2MiBTYWx0ZWRfX6evGhffeAr+h
 Yk53x/WNj7d3uEfPJlIkb7JVC5+aPfX5BsZfbPtlEnM7In4qCNJI+W6wMHIflbq6IgmyF3JVCN6
 bZcJZFrHdUANYPctJ7Uy/Tk/2ykSV1c=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzEwMDA2MiBTYWx0ZWRfX1JxQDoNrmW4L
 bQo8zo5ipgmjo6RqhVXjt3JQqnUaYj7QEilZkk9AXvdciBAcqryLYKavsV1ssWqL6CXAltFVbzF
 oF5VgtfzHXt4zmVnZJw1nqG8IbtjgsZ57YJuUQIdUjsaYbSIl3k2r8I8bCVm1YN4INbu3b7FPzj
 LSZck/EDV++4aYJXKI826CXQXX5fCKcMQktiRR60O1KNAka7J6ii70wmTCU1VoSdKVBWs1v1GAp
 a5jFKCRHE0Viwj1m1u7IPRb41AG347fA0mEw6KPvg6YteCa61H3nxXiuI3j3bmXmmx4e9nnIsiU
 aeuzwc/E9oyZUDMb9SM9MfgT99sV5FGRB7kG+rOow2qem3wsQVrEDqn8xdtx2z137N6W1eYydtS
 FuGt7nG2s4yLMDG1mF8eEVLLax5G/VEqNajnIxT1yBLSn2dEL5Ea/8M0v88GE7SzwPHAkjH0dy3
 eP3L8QgW+kLCcRni8Iw==
X-Proofpoint-GUID: lzTHkekQ1oAhlihJ_LB-vOORDFVjSNQf
X-Authority-Analysis: v=2.4 cv=N+QZ0W9B c=1 sm=1 tr=0 ts=6a5093b9 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=cmxGNSBqaG227vPgA-oA:9 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-10_01,2026-07-09_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 priorityscore=1501 phishscore=0 adultscore=0
 suspectscore=0 impostorscore=0 spamscore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607100062
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-324239-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:mathieu.poirier@linaro.org,m:jingyi.wang@oss.qualcomm.com,m:taniya.das@oss.qualcomm.com,m:maulik.shah@oss.qualcomm.com,m:abelvesa@kernel.org,m:qiang.yu@oss.qualcomm.com,m:sibi.sankar@oss.qualcomm.com,m:pankaj.patil@oss.qualcomm.com,m:jishnu.prakash@oss.qualcomm.com,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-remoteproc@vger.kernel.org,m:krzysztof.kozlowski@oss.qualcomm.com,m:jyothi.seerapu@oss.qualcomm.com,m:raviteja.laggyshetty@oss.qualcomm.com,m:dmitry.baryshkov@oss.qualcomm.com,m:ananthu.cv@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[ananthu.cv@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ananthu.cv@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A5D26737C8F

The currently listed SoCCP and SoCCP DTB reserved memory regions
don't align with the memory requested by the SoCCP Firmware. Fix
this by updating the SoCCP/SoCCP DTB memory regions to reflect the
memory region requirements of the SoCCP firmware, as described in
the Glymur v21 memory map release.

Fixes: 41b6e8db400c ("arm64: dts: qcom: Introduce Glymur base dtsi")
Signed-off-by: Ananthu C V <ananthu.cv@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
index 20b49af7298e..9ec7c256b80a 100644
--- a/arch/arm64/boot/dts/qcom/glymur.dtsi
+++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
@@ -602,13 +602,13 @@ spss_region_mem: spss@88a00000 {
 			no-map;
 		};
 
-		soccpdtb_mem: soccpdtb@892e0000 {
-			reg = <0x0 0x892e0000 0x0 0x20000>;
+		soccp_mem: soccp@88e00000 {
+			reg = <0x0 0x88e00000 0x0 0x400000>;
 			no-map;
 		};
 
-		soccp_mem: soccp@89300000 {
-			reg = <0x0 0x89300000 0x0 0x400000>;
+		soccpdtb_mem: soccpdtb@89200000 {
+			reg = <0x0 0x89200000 0x0 0x20000>;
 			no-map;
 		};
 

-- 
2.43.0


