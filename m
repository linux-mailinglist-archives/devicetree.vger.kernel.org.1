Return-Path: <devicetree+bounces-275282-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sKvQIwsatGlLhQAAu9opvQ
	(envelope-from <devicetree+bounces-275282-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:07:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 05B632848A7
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:07:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D652C317FD59
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:54:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 004FB39A07C;
	Fri, 13 Mar 2026 13:53:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kDT/+9YQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Jpqh8kOY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 984E938D012
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 13:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773410018; cv=none; b=sdimHvRtPWorKnrue0hbalCEMCbe7hiM9Oc9tlrqUrjSOgt13fpKOQZfNNgOJzFPMy9iJvIxwI1Qzg007C2gSK+PMiYBQx+KwgQmba5Z95bAb0880bddwnvd4DyuNVz6Gk5HjO3FR74QD4jZ7lPopLgQLifH0v3Fon+3IB3C2f4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773410018; c=relaxed/simple;
	bh=TrCdImSus03fQxnuCdhKZOvel6k0XW4oA6lvm5eRWDU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=AVwdvl7Omg5jOwU3707ZmvbUfH5M+kGN4ZzSfh0uNQmP/fFS28cDiWys9Hd6MRNQ2vCnaguA7xu53P35P9Lr5eKNcdTc042XfAjREtwMH0WxtYbXf4/sCbWlx+kNEFRmET9eUsQbN/aXDURCLT9OaGDZ+vbusMq1AJAIZe3titc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kDT/+9YQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Jpqh8kOY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62DChq8G3342531
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 13:53:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=xZKRgfOKHQVJGs25wrwwgK
	WUyR1Q+6l/FFjlEiaQ6PI=; b=kDT/+9YQxyZD92JD2tx2W0FVRUp3x2gvZMPdje
	tm3uz+Cx1sSXsD4vJEk3wPOJLgQMbJI1nhvGaqD8/TWDT4+4KK1DYPvHSSkcRnQ0
	/1N0b2XwlKJnPuqKHUcNDK2u0IFAWVcA129V0/9BqeqR1bWvANGwIUvys8iQMcZ0
	HNT2dqtbHym9oNx0b553zxLQI6TQJ8ASwhzY7k/jf6UFmXYcEYEBcj8Xu+dqfHsG
	RHp9g6mpxpkridUhN2/YFsS46c0I8iKavmW184rc8ylYqKE4TePFvaiMLeDsm+3D
	P8uUblrRE1xpsguD8nPs+CFQzkoXs7BMisqtReA29tWvra9A==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cus9w51qv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 13:53:32 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cd77e5e187so1200208185a.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 06:53:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773410012; x=1774014812; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xZKRgfOKHQVJGs25wrwwgKWUyR1Q+6l/FFjlEiaQ6PI=;
        b=Jpqh8kOYUYEepzKaQyRoBtgLARVPDmMUSll8n9hymg/51fary8xUsluc+jxLMz14jM
         JAuZfI0J00+LNXvaDqin9Y83mydLmnhwGHY913wZ2vAEThP9eLByKDuKCgiMl2GF5yoE
         kli7v/qhl4NYDXXHQG07WTE/DTtyJAHYs4sicKYVPQRzwdBWeoW0uGWHzJU4MRa7Ujci
         JBP9mU6CpJAbkjEj98JBgPdERjWvT6kwKK/P95fiK69ZUdw0LUa1Nv6D46jTxPiXmFNb
         akh38tCYs1LeOVioL2fJVgUDJlKfca0FDVSjog7TTw+y7JueiELokGAYzuIOfnAdIYic
         5MDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773410012; x=1774014812;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xZKRgfOKHQVJGs25wrwwgKWUyR1Q+6l/FFjlEiaQ6PI=;
        b=BeScTr8DsihUMEUsz3iyH5yxXmwZ3ysMtVBkGOEmUAGdC4qSpo8YtsXSd1btgRTeEz
         GehfXxrKEn7/OBaQkv3N+7gwG1VL3bCVBl0dVRmrA+aKMau/VwJTEMVKyj6EWS10/LA1
         X57zH/ES/nVdFYRqhPgtdnRIwhu8KmBItfj2okr/8CLZKfGBIUrOhtugAnvnoIJ1/Eom
         3fMjDo6T+GrDibU5md1gQgiXcCsQZQfNZegU1pass7ApwwiAeAj4VLh/epWQy8N1KYQu
         oA4CExczgG827F291aAk5wAM68tbxoHoLA6O1J4nqVU1sgvF2UB6ztbsYrnKsTs3M2+i
         9fwA==
X-Forwarded-Encrypted: i=1; AJvYcCV+ovFF3u4XIxX9LyD+IU6CMP70CXHO4UK3VyAKKk9r1/pKvLT9HGDHEnUnRZ0Z/Y4kwLnj6MfzqyRu@vger.kernel.org
X-Gm-Message-State: AOJu0YyaIiWDuqWuKL2leWror9BDj43eDvDOQOHbY7EInyyBT8pocWTh
	9KLEuZbM2iqI7rR/weUhBUQvafFoDXn5+jCasbh92QZFFY8cXxlhs8N5QpkSMOQ/qOzcvw2iI46
	FQbArxpJQhChYXXNiMURtAflPbAWaGgj+BfRr35SHSzz34bCW4sT97z7yv9CSSip1
X-Gm-Gg: ATEYQzwL7TuwPSHU5VltmuC1mTMaAhliPp/FPjx1gSj7iRwEzIgL64UjXv2h3hWOkQQ
	lO3mZGbq2BC2F3lW1OWf6MKRD1m66SeJYdKYo0mtQkh6N+80KS0iB3J7fIhPW10lDpEFZ5w8OEX
	JT4tyot7LU0PKU5/g6tF4JV/fLgD/2BElQpMAE8lA2zjbcaQuWQLrCfwNQDj5NIlLjTuPSZ4G7f
	8PlJuLbUYUZQvETH16rnRLi9ajATPDlvO3qwZDkIeNKP5VmKl0kbwRO+0II7RXZoupt8qfJGxCi
	PaIVjo5UQlsREMXKJK7l74JSqWFRfOJjZZygoUhUW8my182wVXWy/eom8cf6CnYLEPoPbhwmZSd
	TejMnOeK++4oZ41irWIeH5c6td/0=
X-Received: by 2002:a05:620a:4095:b0:8cb:5176:ee5 with SMTP id af79cd13be357-8cdb5b71732mr446530985a.62.1773410011573;
        Fri, 13 Mar 2026 06:53:31 -0700 (PDT)
X-Received: by 2002:a05:620a:4095:b0:8cb:5176:ee5 with SMTP id af79cd13be357-8cdb5b71732mr446526685a.62.1773410010974;
        Fri, 13 Mar 2026 06:53:30 -0700 (PDT)
Received: from hackbox.lan ([82.79.95.133])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe20c0b4sm19515600f8f.25.2026.03.13.06.53.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 06:53:30 -0700 (PDT)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Fri, 13 Mar 2026 15:53:22 +0200
Subject: [PATCH v3] arm64: dts: qcom: glymur-crd: Enable keyboard, trackpad
 and touchscreen
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260313-glymur-dts-crd-enable-kbd-tp-ts-v3-1-66c5ddfee97d@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIANEWtGkC/42Py27DIBBFf8Vi3YkA2xB7lf+ouuAxTmjjF2CrU
 eR/LzitlEWldoO4aDj3zJ0E9A4DaYs78bi64MYhhfKlIOaihjOCsykTTrmgJW3gfL31iwcbAxh
 vAQelrwgf2kKcID8eqaFGy2NTUZIok8fOfe4Nr2+PHBb9jiZm7PeEx3lJ1fExRrQKCGbsexfbo
 muoUrZjRkhDnrXaYpdiSSrbzOnDj102UzbZ2Qlo2dF0x0bWtF0rkiUuLsTR3/atV7Z3/nvBlQG
 DWmDiStEoKU5jCId5UddsfEjHXrHyJyzjf2N5wnIupUasTC2qX7Dbtn0B8NvVuLEBAAA=
X-Change-ID: 20260309-glymur-dts-crd-enable-kbd-tp-ts-c80c0cb78940
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-7ae85
X-Developer-Signature: v=1; a=openpgp-sha256; l=5304;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=TrCdImSus03fQxnuCdhKZOvel6k0XW4oA6lvm5eRWDU=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBptBbY/ceZJSOjdSurXNa3/pjQ/uEP9VaXbrVd+
 WdYFJHIpt6JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCabQW2AAKCRAbX0TJAJUV
 VtZ+D/938gX0reEP/1Rc7sQElhRzl6DGV5V/wn6PuUSouMAjdaWlFhDCRoPsZHcx98e/JtCxHTW
 9AgUzrtglgRz77jr77a9CaknbVSqR//c1F8VpYyiXoh5DBFLoNQcHV6/6xVNv3EyPn9mZgy2fB3
 AGSw9EDIcAzSOjORZHnarAY/MYvyfcFeGvAGc9M8h6tWT768cjnXqtYL1Y+UXyH+EqEoHyPXVyw
 D9bBomryQVuEKUn0nJ8k5ehqlAwR+b7HnGZMog5S0TseSYfbPca957rKf/EnQUmYZCnd/4eloBf
 0rIuW7F1rxzqgRWRZ9cIIeivozU96SAgQIDvUOGyAko8dA/Dt8rvmDdGqIdlGfY3Jpzk2rO2R3g
 nsBOq4K3+aG7l7olbmlC9wbP/B4KYm0Jlz6Pkji1s9lhA04wr4XEpL47ao+cVvNWSiJiOLyMYdX
 vpZBPQoXK8sMmg2nveEh67b0m54/heP8h6tbF9/CbvvGkBNQghqHzwCr22BekR0XgWiqYoJabtx
 9tupV77DIoImTWToOHrpw9TwtjZVe9GaNiEQOwqSDob7tSUgYJyN8w7Vj1Y8TqAZKCxyojwsf8H
 ZkAUKRo+qZWEpLHGQthZ6/xJ0BV1vvfx1GLKnDuyvWYRUtnU98MGv8qK/yRFD0LDb44FpqZjRyI
 gkefSGXjng6BEDA==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-GUID: gpHjnfIZeDhCPj2ky1Gb6wNIgbdygCla
X-Authority-Analysis: v=2.4 cv=IIIPywvG c=1 sm=1 tr=0 ts=69b416dc cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=iKs3dpp2RB4k51ZqCjcyjQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=-RH2vHZGa4pziAc3uSgA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDExMCBTYWx0ZWRfX4BeKXdc1V/Cg
 1SMHnyX0VmR3wWn5awxCDplhHqqXIww+nbNf7HwCjXC7e4rE7i7gBZNikKjXBSh21noXsCVKQuq
 ECM/T6GPk64o3I4HiWUAL/8rRJ23XgDzMfjsZ+ECVOFPXS2oovWUOP1Yue39/5iqhL5cIXH4/Km
 cRO4Uux9lsZEMfbW8ykP76P6TGcMO4URxpJ/dz7tdOslskjldr8pfUWbEP7t1O4nRn9KJGVgw+t
 X6+XSJvG5MbgebzKk+9/wFrtKUf234ZCQgVOEEBzg8lgChMnQdh18ZlmCL6bHhhDbTjS64dpG64
 dcUJcao4T3iQJ2efpgjpPy8/mKRzDwNbOWma9PG6wU7o8z4zXS+PlOq+ZhHp7MterIGo11rUj85
 O0p5j42TlU810Vh76/UKJ6AoRt2btxa4KVQEMqs3Noe5ZvVOc16fJ9Y0M2Uttakt9IcmIyLNWJb
 SE9ljlDvnrTOYMf6N+g==
X-Proofpoint-ORIG-GUID: gpHjnfIZeDhCPj2ky1Gb6wNIgbdygCla
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0 lowpriorityscore=0
 clxscore=1015 adultscore=0 impostorscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130110
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[msgid.link:url,2c:email,3a:email,qualcomm.com:dkim,qualcomm.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,0.0.0.38:email];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275282-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 05B632848A7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On CRD, the keyboard, trackpad and touchscreen are connected over I2C
and all share a 3.3V regulator.

So describe the regulator and each input device along with their
pinctrl states.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
Changes in v3:
- Picked up Dmitry's and Konrad's R-b tags.
- Drop the output-high and add bias-disable to the reset pin of the
  touchscreen default state.
- Link to v2: https://patch.msgid.link/20260312-glymur-dts-crd-enable-kbd-tp-ts-v2-1-2277bee4c564@oss.qualcomm.com

Changes in v2:
- Rebased on next-20260311
- Re-ordered pinctrl properties in vreg_misc_3p3, as Konrad suggested.
- Dropped next level dependency patchset.
- Link to v1: https://patch.msgid.link/20260309-glymur-dts-crd-enable-kbd-tp-ts-v1-1-56e03f769a76@oss.qualcomm.com
---
 arch/arm64/boot/dts/qcom/glymur-crd.dts | 117 ++++++++++++++++++++++++++++++++
 1 file changed, 117 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
index 38cdcf662ba7..5089ff7cdca3 100644
--- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
+++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
@@ -13,6 +13,8 @@
 #include "pmk8850.dtsi"         /* SPMI0: SID-0                  */
 #include "smb2370.dtsi"         /* SPMI2: SID-9/10/11            */
 
+#include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
+
 / {
 	model = "Qualcomm Technologies, Inc. Glymur CRD";
 	compatible = "qcom,glymur-crd", "qcom,glymur";
@@ -139,6 +141,23 @@ vreg_edp_3p3: regulator-edp-3p3 {
 		regulator-boot-on;
 	};
 
+	vreg_misc_3p3: regulator-misc-3p3 {
+		 compatible = "regulator-fixed";
+
+		regulator-name = "VREG_MISC_3P3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+
+		gpio = <&pmh0110_f_e0_gpios 6 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+
+		pinctrl-0 = <&misc_3p3_reg_en>;
+		pinctrl-names = "default";
+
+		regulator-boot-on;
+		regulator-always-on;
+	};
+
 	vreg_nvme: regulator-nvme {
 		compatible = "regulator-fixed";
 
@@ -446,6 +465,64 @@ vreg_l4h_e0_1p2: ldo4 {
 	};
 };
 
+&i2c0 {
+	clock-frequency = <400000>;
+
+	status = "okay";
+
+	touchpad@2c {
+		compatible = "hid-over-i2c";
+		reg = <0x2c>;
+
+		hid-descr-addr = <0x20>;
+		interrupts-extended = <&tlmm 3 IRQ_TYPE_LEVEL_LOW>;
+
+		vdd-supply = <&vreg_misc_3p3>;
+		vddl-supply = <&vreg_l15b_e0_1p8>;
+
+		pinctrl-0 = <&tpad_default>;
+		pinctrl-names = "default";
+
+		wakeup-source;
+	};
+
+	keyboard@3a {
+		compatible = "hid-over-i2c";
+		reg = <0x3a>;
+
+		hid-descr-addr = <0x1>;
+		interrupts-extended = <&tlmm 67 IRQ_TYPE_LEVEL_LOW>;
+
+		vdd-supply = <&vreg_misc_3p3>;
+		vddl-supply = <&vreg_l15b_e0_1p8>;
+
+		pinctrl-0 = <&kybd_default>;
+		pinctrl-names = "default";
+
+		wakeup-source;
+	};
+};
+
+&i2c8 {
+	clock-frequency = <400000>;
+
+	status = "okay";
+
+	touchscreen@38 {
+		compatible = "hid-over-i2c";
+		reg = <0x38>;
+
+		hid-descr-addr = <0x1>;
+		interrupts-extended = <&tlmm 51 IRQ_TYPE_LEVEL_LOW>;
+
+		vdd-supply = <&vreg_misc_3p3>;
+		vddl-supply = <&vreg_l15b_e0_1p8>;
+
+		pinctrl-0 = <&ts0_default>;
+		pinctrl-names = "default";
+	};
+};
+
 &i2c5 {
 	clock-frequency = <400000>;
 
@@ -626,6 +703,19 @@ key_vol_up_default: key-vol-up-default-state {
 	};
 };
 
+&pmh0110_f_e0_gpios {
+	misc_3p3_reg_en: misc-3p3-reg-en-state {
+		pins = "gpio6";
+		function = "normal";
+		bias-disable;
+		input-disable;
+		output-enable;
+		drive-push-pull;
+		power-source = <1>; /* 1.8 V */
+		qcom,drive-strength = <PMIC_GPIO_STRENGTH_LOW>;
+	};
+};
+
 &pmk8850_rtc {
 	qcom,no-alarm;
 };
@@ -664,6 +754,33 @@ edp_reg_en: edp-reg-en-state {
 		bias-disable;
 	};
 
+	kybd_default: kybd-default-state {
+		pins = "gpio67";
+		function = "gpio";
+		bias-disable;
+	};
+
+	tpad_default: tpad-default-state {
+		pins = "gpio3";
+		function = "gpio";
+		bias-disable;
+	};
+
+	ts0_default: ts0-default-state {
+		int-n-pins {
+			pins = "gpio51";
+			function = "gpio";
+			bias-disable;
+		};
+
+		reset-n-pins {
+			pins = "gpio48";
+			function = "gpio";
+			drive-strength = <16>;
+			bias-disable;
+		};
+	};
+
 	pcie4_default: pcie4-default-state {
 		clkreq-n-pins {
 			pins = "gpio147";

---
base-commit: f90aadf1c67c8b4969d1e5e6d4fd7227adb6e4d7
change-id: 20260309-glymur-dts-crd-enable-kbd-tp-ts-c80c0cb78940
prerequisite-change-id: 20260109-dts-qcom-glymur-crd-add-edp-03f0adde9750:v4
prerequisite-patch-id: df42484b224c01014637ec5a8f56bab459890557
prerequisite-patch-id: d986d8d948eaf7b80028b2244750dc7aff7de307
prerequisite-patch-id: 7ec5f802a334d96421d8f95d4d9e9773655cc947
prerequisite-patch-id: 8d9e016b49979fa817cf9eab70b809fdb9d4656f
prerequisite-patch-id: 6a291fd702870ca28d64439313d498593996b741
prerequisite-patch-id: c96958ab5c5605fb9577645ac5bfe5912cdfebfe
prerequisite-patch-id: bfa283218723a48e54fcd842484b004c877339b7
prerequisite-patch-id: 346f2db0933c551a039f63b945f989a5c8320657
prerequisite-patch-id: 919020405b70d588fa4356a5cbfb44e67006102e

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


