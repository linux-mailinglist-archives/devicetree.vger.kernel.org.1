Return-Path: <devicetree+bounces-267400-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EDYMCBlGnGk7CgQAu9opvQ
	(envelope-from <devicetree+bounces-267400-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 13:20:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id ADAE71760B5
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 13:20:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C65173108978
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 12:17:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B28B365A0B;
	Mon, 23 Feb 2026 12:17:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kgezEpUK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="B3aNemDV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C40E2365A02
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 12:17:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771849022; cv=none; b=SGNU0lvIhBntX4gnO54GOv/Vx1vMJEQFKI7De2OHue7OwRxOV4rBPH9WlDSWQKPtKxJeh7fJJfQl/+XWeEJrw3WTmx2lMb/QIBqJFm6fHXqbSjh6B9CaWUBT/o8cKzeiNHMZoZProoMlWT5rVDM9X1hyUplDKJYozSHiBFign/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771849022; c=relaxed/simple;
	bh=vpbdjGeEJ7hrdjV5vc0J1L+LcmKEhdeqiOvFgNQu1is=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=P356G4ImRW2JprDNptJI7AaGqgRb/N0bxf4PTZIBlT9TepOMMcfeBHwdM5XUKVOiqpE4djAOfy/oCQKuWjmtZzri1VRlX4n3tzqhS9uWirSqmClhBH7EWXyVt4T9BT4r07PUohH5kZPKNvEcjObuj3dGztvRl2mwK+JCh4XZmfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kgezEpUK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=B3aNemDV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61N9mI3k1752687
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 12:17:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MLgpMudHXpWxIICQ0YMkH6LtCt9SuckAUrAOomnZg5Q=; b=kgezEpUKK5yWrklL
	XisM7BzdHSFxV3VzbMz0rlnS3jOMHKB78yOFVcaSemgTvW/Uphnauf5q3YC54qNu
	gtihtAgT0VyrNHjLasj4x2ziOLQli+JMAqDgHJ48zHxvpPsfuVljiWA7mk2VFaxB
	IdxDz6/086bHToTclLrHxAqA938L7Br/WYOysRjsU4bn5EXovy83KxSbhQ1vk1qh
	eO/mh+ScTfoSnf8yGyc3ZM0x1c/b0fAw76HoLEt/dq1lBpwfKW/fpuQZPHr0HpMj
	psJiZTMg828ttglpdHw1OvMUgoWTtC5rm9D1gF8tyKpJEl+OCfjksxXQL9z0lDU9
	X5HWGw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cf5wavp93-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 12:16:59 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb4a241582so3959767385a.0
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 04:16:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771849018; x=1772453818; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MLgpMudHXpWxIICQ0YMkH6LtCt9SuckAUrAOomnZg5Q=;
        b=B3aNemDVpuePqVcutT95/zNoZl+ehYegmczVFickssdjDUqGROIzvfNpWlwFObrMVq
         0gGdbZxCYMNCdM8mvKtMKiZ3hKRoIY65+v113wF9tsk5TORuJ+998QlyKBzrXHGzMY6E
         nJSR62jVu4NwT+KPTVKMN9T/LzsSRE9VtDlwqq3EyETTX0morbq5oVZDNu9HdccK1Wf9
         p6R1tPzh3P1OSxsMY3h//DBVjaNyvpeke3eS74otmC47pYXcctEloQVGUzYXaif5rwqo
         XH4p53Ky6fpp2+9mpHLitl7CckBaQs8mNCsyCEOFYDIEOrk2krgXGx0IdZBuzhL6LweW
         3vtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771849018; x=1772453818;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MLgpMudHXpWxIICQ0YMkH6LtCt9SuckAUrAOomnZg5Q=;
        b=b8lJlaAl/6EMlKVGD8Do9LbkhdcCaYFwN24DzR+HMVAzOaXWFpeLkFpTt0QMiF6fJg
         j/B25+k5XqnF/oNkY5pOqWJlJWcnvVl/yC7MIIzG6I08pFgxWugQoBr1HB21KXGoLfiH
         rE8AcOVR1awR2E8MwsozphNtAeN3++ajRfWEHRwDWRsk/6aK3Ui3xpVPys/oszlwm5SC
         KkcT4IZ0MgF8JCxdPmr6jzD6n+4r1xCloFJHFJTevULOZ9Hiu4kv7QMLzUPPdtmXMhUE
         HbeVVVD2o4akabXxBVYYjLDtjnVDVrkZp22xeJtm6fXpeVKFyfHyGP84XN3k7DT7wqnW
         nz1w==
X-Forwarded-Encrypted: i=1; AJvYcCWiOO5r6U/63dcLja4FonZG7Eh7H/HZkZaa4JswAsBm8fm9Qex49fF5NKSUeOVSsROnS51J0jtvBmqC@vger.kernel.org
X-Gm-Message-State: AOJu0YweW3P6J5LKha5NGUpbQdHnc/wS5OdtcB/WkIQkCzW9PH1EutwK
	yxQKtU1PvIh+YalBDtK/quAeXfiYg+tbwBGUlBNhmtWm21Hgpztua1IwWPt4SBUzut103/fIitX
	Hy7nP6iXN2N3hKl6qgMJ175faZbzhMziICMeZdvrUZJQ6KZvIZa/Mb+15KE0MEUQ/5sxdogph
X-Gm-Gg: AZuq6aKLMnpdyFjHbzDUyyT0/v8oqO+1so7NK8G6saA+qBYLRK0Ita4Xi92oFkea6vJ
	Rqf1AItUiQz3/VIGkd/sJCtKjGCTS64Mh9ueZ5nxgWmJveyzP9gjNyj+K8hMSBwYuE/DPk6cTpS
	sLJxx9a7hqKx/kvk0X6hCBoW1+3oCin8aH11rK4GHO87M1D2AuN/Ps4ZhXwLOC6dkHIdH3clvXh
	w7N7feB9lDVjwF42TrAzFtfXH6Jnfvai/z22AQQFyRocDF4io0hftsAixagq5g4cbXWPqLROZa0
	oLHksTU89Gl//mjRhjkV4DCbGxqNz4TBfQgHJnDAe0T+tWOhdpYzwEy9Y4XpRu4RZxZLT2QmKFv
	gIJbm2fe0ts3xQbuuH30jaTpOy3w5AA==
X-Received: by 2002:a05:620a:4416:b0:8b2:1ee9:dcfb with SMTP id af79cd13be357-8cb8c9cdeeemr949419485a.8.1771849018255;
        Mon, 23 Feb 2026 04:16:58 -0800 (PST)
X-Received: by 2002:a05:620a:4416:b0:8b2:1ee9:dcfb with SMTP id af79cd13be357-8cb8c9cdeeemr949414285a.8.1771849017619;
        Mon, 23 Feb 2026 04:16:57 -0800 (PST)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483a31ff4d7sm274881985e9.15.2026.02.23.04.16.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 04:16:56 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Mon, 23 Feb 2026 14:16:42 +0200
Subject: [PATCH v3 1/2] dt-bindings: interconnect: document the RPMh
 Network-On-Chip interconnect in Eliza SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260223-eliza-interconnect-v3-1-f4508b8335c5@oss.qualcomm.com>
References: <20260223-eliza-interconnect-v3-0-f4508b8335c5@oss.qualcomm.com>
In-Reply-To: <20260223-eliza-interconnect-v3-0-f4508b8335c5@oss.qualcomm.com>
To: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=8702;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=nadzIGtonOCAZ8jC76r7o5rs1zDSUNdeat2lxtQGaVs=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpnEUy1nQRMiVxUvbBdpHdM/iD66MNh0VYTkPwA
 EKg1g/NbyuJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaZxFMgAKCRAbX0TJAJUV
 VpCrD/9xvzKOYsC/UbUz+vrRF2gey3Vi9GE20L44B0gyiFKUWGfGZ0ADfLxoNxHrVu3OeAdn111
 f3MKWtks1/09Vy3hpOxl7X241YSqmtz3Dgwojp+FDdH6zK7AfBYnLsC7VxpQmFb5klGuRoEVcMb
 /pa8v8nC1l3BpCGrcEIf0i4Cpyo67s62Uth4uD2n1LMgVUN5TYfBk6xOYGM/AH/ykCtTUzuRBHe
 CI1REz+bCShn+rMOkgyWJpZvmcMt+U/c7xnW7KkEiqEREFvjLNSXS5qWPzaI0HpqmJy7mLJM5vK
 NSZif6A9K1ShqaA8Tn9QSryZEPRMRwKFH17ClSx+djiRw17GIoUrCJdlIa6Lyxw9d5wVRL9ehDg
 mikfEr7ET/DlmuyccuGq81jhsev01VkadAS0KWFoG74ptNw/XXzO28zcYFHYcPFtC6I8yb0C9oT
 Icc5BtqEiDDbf/xl0/NtVDo+49LRA+7p3kSMqzlqwCSP3lMxIQm6JtOvAeDzE5I9zbVYqGgcuaA
 fZWOG5a0FUAzAILjmq8mxjSmD3ysQYsbJxPVmCt7fYx1X8ada2natdX6RoytbInHuoZNnMUvARX
 FgTH1+AOrwuisvMnBKdxRnSnlPHiKIYBS6d2NMEdMiU8B7DsBN7StODyClta6w9fYUY6G4Pq+Rb
 iCmFEXN4wigZhQQ==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Authority-Analysis: v=2.4 cv=KJVXzVFo c=1 sm=1 tr=0 ts=699c453c cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=Iq7QPC57mEAaqCDayAAA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDEwNCBTYWx0ZWRfXw1A7qoPQ0+Ro
 lobd54LTJukeY9cFm6QJWn7gKbmwmLNtuC4n0f4vwHN/8VK7uhHUoTqMnVR5xpyKQrWTDnO81SN
 3yf4I4NLGD91vvW7kPVhXiSj+i9zROcz4lHQt5yr/UDrvhbDSrL6FaXrDnsuevlgqgTM34OrO6Z
 6IW8Hu5FPSN18Aeg1z3bOVXX4KWnWdz+iVBGDBgn1ZN1yB1v1+aPiOaYLJfDRrXBkbwqdIOTzYP
 n9C/EIk9msZM7Z6E85nAssIo1plQ09OPlCJcJeyn6Yc+2KAh2wtutKk/CPjf3lxN/fb3viQYhcY
 icicYJTVzno4Yjtg1NtSunKgWu8aVG+4r+TcmEx0y2gYt+L8YOL344xLaLEQnFw5sTCanRXw9x2
 lMNaHms/dZ5Ro/yTV/TE4pKfjVgghOk4LeMdior4wJrW3xp9bubxgwIwMff/2VORWuBkcd5YFoC
 IFxyOBEvBt3qmH3dUlg==
X-Proofpoint-ORIG-GUID: tm1y9dxccwmW5kiArehWZfFYqHK3AZLm
X-Proofpoint-GUID: tm1y9dxccwmW5kiArehWZfFYqHK3AZLm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_02,2026-02-20_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 clxscore=1015 spamscore=0 malwarescore=0 adultscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602230104
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-267400-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,16e0000:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_PROHIBIT(0.00)[1.111.188.160:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: ADAE71760B5
X-Rspamd-Action: no action

From: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>

Document the RPMh Network-On-Chip Interconnect of the Eliza platform.

Signed-off-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 .../bindings/interconnect/qcom,eliza-rpmh.yaml     | 142 +++++++++++++++++++++
 include/dt-bindings/interconnect/qcom,eliza-rpmh.h | 136 ++++++++++++++++++++
 2 files changed, 278 insertions(+)

diff --git a/Documentation/devicetree/bindings/interconnect/qcom,eliza-rpmh.yaml b/Documentation/devicetree/bindings/interconnect/qcom,eliza-rpmh.yaml
new file mode 100644
index 000000000000..998d889e7d7d
--- /dev/null
+++ b/Documentation/devicetree/bindings/interconnect/qcom,eliza-rpmh.yaml
@@ -0,0 +1,142 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/interconnect/qcom,eliza-rpmh.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm RPMh Network-On-Chip Interconnect on Eliza SoC
+
+maintainers:
+  - Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
+
+description: |
+  RPMh interconnect providers support system bandwidth requirements through
+  RPMh hardware accelerators known as Bus Clock Manager (BCM). The provider is
+  able to communicate with the BCM through the Resource State Coordinator (RSC)
+  associated with each execution environment. Provider nodes must point to at
+  least one RPMh device child node pertaining to their RSC and each provider
+  can map to multiple RPMh resources.
+
+  See also: include/dt-bindings/interconnect/qcom,eliza-rpmh.h
+
+properties:
+  compatible:
+    enum:
+      - qcom,eliza-aggre1-noc
+      - qcom,eliza-aggre2-noc
+      - qcom,eliza-clk-virt
+      - qcom,eliza-cnoc-cfg
+      - qcom,eliza-cnoc-main
+      - qcom,eliza-gem-noc
+      - qcom,eliza-lpass-ag-noc
+      - qcom,eliza-lpass-lpiaon-noc
+      - qcom,eliza-lpass-lpicx-noc
+      - qcom,eliza-mc-virt
+      - qcom,eliza-mmss-noc
+      - qcom,eliza-nsp-noc
+      - qcom,eliza-pcie-anoc
+      - qcom,eliza-system-noc
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    minItems: 1
+    maxItems: 2
+
+required:
+  - compatible
+
+allOf:
+  - $ref: qcom,rpmh-common.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,eliza-clk-virt
+              - qcom,eliza-mc-virt
+    then:
+      properties:
+        reg: false
+    else:
+      required:
+        - reg
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,eliza-aggre1-noc
+    then:
+      properties:
+        clocks:
+          items:
+            - description: aggre UFS PHY AXI clock
+            - description: aggre USB3 PRIM AXI clock
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,eliza-aggre2-noc
+    then:
+      properties:
+        clocks:
+          items:
+            - description: RPMH CC IPA clock
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,eliza-pcie-anoc
+    then:
+      properties:
+        clocks:
+          items:
+            - description: aggre-NOC PCIe AXI clock
+            - description: cfg-NOC PCIe a-NOC AHB clock
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,eliza-aggre1-noc
+              - qcom,eliza-aggre2-noc
+              - qcom,eliza-pcie-anoc
+    then:
+      required:
+        - clocks
+    else:
+      properties:
+        clocks: false
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    gem_noc: interconnect@24100000 {
+        compatible = "qcom,eliza-gem-noc";
+        reg = <0x24100000 0x163080>;
+        #interconnect-cells = <2>;
+        qcom,bcm-voters = <&apps_bcm_voter>;
+    };
+
+    mc_virt: interconnect-2 {
+        compatible = "qcom,eliza-mc-virt";
+        #interconnect-cells = <2>;
+        qcom,bcm-voters = <&apps_bcm_voter>;
+    };
+
+    aggre1_noc: interconnect@16e0000 {
+        compatible = "qcom,eliza-aggre1-noc";
+        reg = <0x16e0000 0x16400>;
+        #interconnect-cells = <2>;
+        qcom,bcm-voters = <&apps_bcm_voter>;
+        clocks = <&gcc_aggre_usb3_prim_axi_clk>;
+    };
diff --git a/include/dt-bindings/interconnect/qcom,eliza-rpmh.h b/include/dt-bindings/interconnect/qcom,eliza-rpmh.h
new file mode 100644
index 000000000000..95db2fe647de
--- /dev/null
+++ b/include/dt-bindings/interconnect/qcom,eliza-rpmh.h
@@ -0,0 +1,136 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#ifndef __DT_BINDINGS_INTERCONNECT_QCOM_ELIZA_H
+#define __DT_BINDINGS_INTERCONNECT_QCOM_ELIZA_H
+
+#define MASTER_QSPI_0				0
+#define MASTER_QUP_1				1
+#define MASTER_UFS_MEM				2
+#define MASTER_USB3_0				3
+#define SLAVE_A1NOC_SNOC			4
+
+#define MASTER_QUP_2				0
+#define MASTER_CRYPTO				1
+#define MASTER_IPA				2
+#define MASTER_SOCCP_AGGR_NOC			3
+#define MASTER_QDSS_ETR				4
+#define MASTER_QDSS_ETR_1			5
+#define MASTER_SDCC_1				6
+#define MASTER_SDCC_2				7
+#define SLAVE_A2NOC_SNOC			8
+
+#define MASTER_QUP_CORE_1			0
+#define MASTER_QUP_CORE_2			1
+#define SLAVE_QUP_CORE_1			2
+#define SLAVE_QUP_CORE_2			3
+
+#define MASTER_CNOC_CFG				0
+#define SLAVE_AHB2PHY_SOUTH			1
+#define SLAVE_AHB2PHY_NORTH			2
+#define SLAVE_CAMERA_CFG			3
+#define SLAVE_CLK_CTL				4
+#define SLAVE_CRYPTO_0_CFG			5
+#define SLAVE_DISPLAY_CFG			6
+#define SLAVE_GFX3D_CFG				7
+#define SLAVE_I3C_IBI0_CFG			8
+#define SLAVE_I3C_IBI1_CFG			9
+#define SLAVE_IMEM_CFG				10
+#define SLAVE_CNOC_MSS				11
+#define SLAVE_PCIE_0_CFG			12
+#define SLAVE_PRNG				13
+#define SLAVE_QDSS_CFG				14
+#define SLAVE_QSPI_0				15
+#define SLAVE_QUP_1				16
+#define SLAVE_QUP_2				17
+#define SLAVE_SDCC_2				18
+#define SLAVE_TCSR				19
+#define SLAVE_TLMM				20
+#define SLAVE_UFS_MEM_CFG			21
+#define SLAVE_USB3_0				22
+#define SLAVE_VENUS_CFG				23
+#define SLAVE_VSENSE_CTRL_CFG			24
+#define SLAVE_CNOC_MNOC_HF_CFG			25
+#define SLAVE_CNOC_MNOC_SF_CFG			26
+#define SLAVE_PCIE_ANOC_CFG			27
+#define SLAVE_QDSS_STM				28
+#define SLAVE_TCU				29
+
+#define MASTER_GEM_NOC_CNOC			0
+#define MASTER_GEM_NOC_PCIE_SNOC		1
+#define SLAVE_AOSS				2
+#define SLAVE_IPA_CFG				3
+#define SLAVE_IPC_ROUTER_CFG			4
+#define SLAVE_SOCCP				5
+#define SLAVE_TME_CFG				6
+#define SLAVE_APPSS				7
+#define SLAVE_CNOC_CFG				8
+#define SLAVE_DDRSS_CFG				9
+#define SLAVE_BOOT_IMEM				10
+#define SLAVE_IMEM				11
+#define SLAVE_BOOT_IMEM_2			12
+#define SLAVE_SERVICE_CNOC			13
+#define SLAVE_PCIE_0				14
+#define SLAVE_PCIE_1				15
+
+#define MASTER_GPU_TCU				0
+#define MASTER_SYS_TCU				1
+#define MASTER_APPSS_PROC			2
+#define MASTER_GFX3D				3
+#define MASTER_LPASS_GEM_NOC			4
+#define MASTER_MSS_PROC				5
+#define MASTER_MNOC_HF_MEM_NOC			6
+#define MASTER_MNOC_SF_MEM_NOC			7
+#define MASTER_COMPUTE_NOC			8
+#define MASTER_ANOC_PCIE_GEM_NOC		9
+#define MASTER_SNOC_SF_MEM_NOC			10
+#define MASTER_WLAN_Q6				11
+#define MASTER_GIC				12
+#define SLAVE_GEM_NOC_CNOC			13
+#define SLAVE_LLCC				14
+#define SLAVE_MEM_NOC_PCIE_SNOC			15
+
+#define MASTER_LPIAON_NOC			0
+#define SLAVE_LPASS_GEM_NOC			1
+
+#define MASTER_LPASS_LPINOC			0
+#define SLAVE_LPIAON_NOC_LPASS_AG_NOC		1
+
+#define MASTER_LPASS_PROC			0
+#define SLAVE_LPICX_NOC_LPIAON_NOC		1
+
+#define MASTER_LLCC				0
+#define SLAVE_EBI1				1
+
+#define MASTER_CAMNOC_NRT_ICP_SF		0
+#define MASTER_CAMNOC_RT_CDM_SF			1
+#define MASTER_CAMNOC_SF			2
+#define MASTER_VIDEO_MVP			3
+#define MASTER_VIDEO_V_PROC			4
+#define MASTER_CNOC_MNOC_SF_CFG			5
+#define MASTER_CAMNOC_HF			6
+#define MASTER_MDP				7
+#define MASTER_CNOC_MNOC_HF_CFG			8
+#define SLAVE_MNOC_SF_MEM_NOC			9
+#define SLAVE_SERVICE_MNOC_SF			10
+#define SLAVE_MNOC_HF_MEM_NOC			11
+#define SLAVE_SERVICE_MNOC_HF			12
+
+#define MASTER_CDSP_PROC			0
+#define SLAVE_CDSP_MEM_NOC			1
+
+#define MASTER_PCIE_ANOC_CFG			0
+#define MASTER_PCIE_0				1
+#define MASTER_PCIE_1				2
+#define SLAVE_ANOC_PCIE_GEM_NOC			3
+#define SLAVE_SERVICE_PCIE_ANOC			4
+
+#define MASTER_A1NOC_SNOC			0
+#define MASTER_A2NOC_SNOC			1
+#define MASTER_CNOC_SNOC			2
+#define MASTER_NSINOC_SNOC			3
+#define SLAVE_SNOC_GEM_NOC_SF			4
+
+#endif

-- 
2.48.1


