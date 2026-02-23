Return-Path: <devicetree+bounces-267293-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sIX/OKwNnGly/QMAu9opvQ
	(envelope-from <devicetree+bounces-267293-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 09:19:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B33172FB1
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 09:19:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CD3A73008A5A
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 08:19:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BD7B346FC4;
	Mon, 23 Feb 2026 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="huykVop/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iJ4E55Zb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3EDB17DE36
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 08:19:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771834793; cv=none; b=lPbYQr47z/X4EKU/p4fEkRQIQrT1erVcF/AeUwYCph9c3SDEZzmnzhcEeWZnfFBM5WQ6n23+dqFd8WFuCtWf0DR+8ogwMR1x0Czv67DiVe37h8YoUregwV+cBqosy7irZYlvOl51cQXwucYSEz3gHE4EHl51ZQk16WAzaH5aVSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771834793; c=relaxed/simple;
	bh=bpbyhfL60EpXD48p9ObjY1m5pfPG/9+CDUIPknFM4DA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=CFlANoiDxK/GjlIur4KnQdsFKVpcIch0Q1KvRINvCU5lTOn8vVQDZZRxbxzAJBHPxvPZtpDYELQ8JogU6VrLFTz/yAAQiM949Zx4HCHcx46UVMBflr3PeC8PZC6RIAdg9EyxTKKXu1PtCj982MIxJy+bnEXsNiH3gE6wSm6EJEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=huykVop/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iJ4E55Zb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61MFe9HV1425174
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 08:19:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=yKpp9TizSKefpW0LuzTBIy
	Zh8T6KHVbQcnalx4nANJU=; b=huykVop/s+9hqRzkHh71CZhQZZWYP9scLqJ/Va
	4HNv0XuDTlFdUyuclH0yB+l9jf+u+mSZ1pEjUVG0M+9UH5ZRRWIH07WiKqJ0v4PE
	3JMmKEdcmtrgzWkY0W52xXXx20J9hLZi8xqQ7oI4ek/vGeRJsomfoWzuMZFU2B8I
	zqhSt05h4+0+7L/oTCoxTXkAaMMXpfGAsB1amTvZ5PLkhHjfqyjnT9EcPXx66gtV
	c1xmnzHr0mnIF5XsZOopBxNhi1VplUlQfvccFXQpQCd/5s+eno9YnPugoe9Qb0Yp
	uCAkvNHsUL/6BxSrjtnBy0hZcgPHQhuPElgTYBBiCmzUw+ew==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cf5v3uvs0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 08:19:50 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb3fae6f60so5325501785a.1
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 00:19:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771834790; x=1772439590; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yKpp9TizSKefpW0LuzTBIyZh8T6KHVbQcnalx4nANJU=;
        b=iJ4E55ZbonGMMAzscwwwAJX2Q5Govxh8s4QnKK4doV5HaVmzEPrZyYDJ83ZSVf+a7Y
         +IQiO/3N4TszYaWeGCfRbVDJgWuU7YHYQ1YhLh/rs4ZnmHiJn0Vvep4wehcSFAqbNjul
         D2WnDNgeuBsRiHQDpI7pcH4K0LxuWHBq6YhZ3T6e0nJ9d72+dDRPt2b574blbXwTdP6r
         JaOxmYM96q+1WUIxWlwNS0gQEhTmV6IBYkE590zTmB2TcpeJJ7lsJO5vAoQJOv5DM8Ue
         jD5Vfo98umgm/tNrQ5nQ5mXMS55ey5eTgk0uTk2pkrDxmFfJaoTdES2XtKKfKQARux5P
         OSbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771834790; x=1772439590;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yKpp9TizSKefpW0LuzTBIyZh8T6KHVbQcnalx4nANJU=;
        b=tzsEukJPEar7/455NcRRhaEgzUswLU8YkiOoVtOfQT7QK3W7f9EyxNkKrcpHVFUR07
         KUTQfaog9hNdXmzPAsxUcKGD8W9Tl2mbzo3G+q3WrvnC1UqHgY6jZbhfJ22j9iowYv4F
         6Xjfzju7Zuzqm7SSpM93lzYAN+ULnSTXaz/DYpdlZE7T/OzJZ5OcvSTWFs6unIhEekgD
         PyhEkPgneLHaWnqUGMrSFvQfi5NMelnTM1oGOKRCoIHcyobeBg7RPwUaEc0WlYu0bfTt
         p+orAIW5U6ffU7Ex0hZqyN6sECddfNWCNUKmdUTJ2yCWopG+DdNZK2TJ5tTy/653awOT
         Q0Jw==
X-Forwarded-Encrypted: i=1; AJvYcCXlAC9203bB7Bt/SLh7MLWr9te2qNyYW70LKcDdUGTZnSioARk5nUE7cvooNMyB1dpgWU48PUx+WsL9@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4M6KxCHFqXvuVL1X9fQCnPDoc0W6l8MZFxEcm5O+TCfLzkLrF
	/2WvLYl8WpdKCFsFwbKPK2r1odoEgWUNxfKWSvmgicNzbKf8TvSWn+vamjt0gT9ywpEIWnGaqif
	zCPCfzJjoKCH4kh4pHccoTeZPa3fCNdQNkLon4qYzG2CwTPwjtCuI7mdeAXQ5MhZAxci44NkF
X-Gm-Gg: AZuq6aJsH+181xMJ72gVX4QTokrMYf6st5VpgL6JBf6r/49V9Z4epUVTmdcUEmKUr9W
	wLpiFOSbv5tSlff44BPc+3q20sfPe/4f/En/MN4/+1LDYBRFptd4qRR3fA/4Lbdmhijy90xJAt7
	R14YiOUZjMSe0iWmZUauWDn4zx7pMieuIYC+rzJGkATI7PPr6Fh+SBpxxgRotgLHntYZis7Y/u4
	XYVy/ec0bD24nIJsqO7KpIZRu1fIxUxZpD0qgT64P5Dcclznfs6XFqBqAKzxv/iJcsGpi9VOTgi
	W0N/ziWhG/Du68T6qXuMURuGfwh9eeBNAgE44ght1Vys062zt9Hb/xrcBQKSrcQ2zztKkSRPhOR
	ZRYVsVQkjiuHhVbPnSzqo0/7zkwaPYw==
X-Received: by 2002:ae9:ea0a:0:b0:8cb:83d8:31bd with SMTP id af79cd13be357-8cb83d836c2mr958588885a.40.1771834789916;
        Mon, 23 Feb 2026 00:19:49 -0800 (PST)
X-Received: by 2002:ae9:ea0a:0:b0:8cb:83d8:31bd with SMTP id af79cd13be357-8cb83d836c2mr958587485a.40.1771834789407;
        Mon, 23 Feb 2026 00:19:49 -0800 (PST)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483a430927dsm104292105e9.31.2026.02.23.00.19.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 00:19:48 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Mon, 23 Feb 2026 10:19:38 +0200
Subject: [PATCH v3] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: document
 the Eliza QMP UFS PHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260223-eliza-bindings-phy-ufs-v3-1-2b0c0f00bcb6@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAJkNnGkC/4WNSw6CQBBEr2Jm7ZD5MCKuvIdxMZ9W2iggDUQk3
 N0BNy40ppNOKql6b2QEDQKx3WpkDfRIWJUx6PWK+cKWZ+AYYmZKqI1QMudwxaflDsuA5Zl4XQy
 8OxHXITde6Syz4Fgc1w2c8LGAD8d3ps5dwLczbW4USG3VDIu5l3Pvr6SXPN5GG8ic0SLN9xVRc
 u/s1Ve3WxIfm129+qAp8ZOmIi3NpXDBe7M19gttmqYX2lUceCMBAAA=
X-Change-ID: 20260219-eliza-bindings-phy-ufs-3d95c2377aeb
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Nitin Rawat <nitin.rawat@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=2401;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=bpbyhfL60EpXD48p9ObjY1m5pfPG/9+CDUIPknFM4DA=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpnA2e/+oMNLUBUdmkG/VcH0rfTLyAF/IjFnhcP
 BXkm+ucfkWJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaZwNngAKCRAbX0TJAJUV
 VpO+EAC9Qdm4YCGW1t/jLFr6oiuU4gQsv5NtZll7LdDtK/2C0IK6fwVTJC1HWNS+L2cPRhZpI7g
 pyrlOIrzXgkQ3F86H5IZjj549V/5t6xUrOtqaTVRWhCkTRwjEe5KK17DTu4mTRs3bUKQUVU7HQV
 r5IF1wka/whiCItCpGYkb16Rx6xQUhp83A2FenUzXB7qrmGF2Vf+DG0AjyrlMGzsaGwU3U4lnA0
 N0WlqSMxcl1j2BRskZbhCOYw5OwkMbyIatRQTGKwa4fzy8Z/LyfGrR5Xyxf1ZRZ//t84dg2miKs
 122qH2/zZj6yoP7zgl9NibwTUpnFl+5WD2cRdUwBhKN5kwxDDxwobtSshR+m9wMiGO99HtUWlt3
 RtTvsVdL5myubrUxbUR5rTxuF3ednkrpkjGvcCzyogl3pS0xxIYiK+IvM/c8agLLciKwWud/Bm4
 gUxXVQHW2uqn9ewquDbZCVOpC3XfegvQqYM2BzTs0mitcnrdXekhnRHavQ3yqSovp0ONgncdDbm
 AskeW2XstbCdjPdZal1K9K14YQKRFjtSbwW1PpAN1rN6b9RKpmNAJDu2xMl9TqAJShExPryUokr
 t5IaU8so5PACJZsUOufF1WjhbQVTqxo7rSnb3NpOxUNR8y7P2+4pMlYW2yPvg57mj/GtAPNWuu/
 F+3qA2gWO5HAyrw==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Authority-Analysis: v=2.4 cv=YL6SCBGx c=1 sm=1 tr=0 ts=699c0da6 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=Sq0TCQXOQfRWv73L7AsA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-ORIG-GUID: d2tqFbBiahbmA6Y3RuNjkZUlmBs0uTiR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDA3MyBTYWx0ZWRfX1HjDi+EWZ/oE
 ANX64PC048u7gH08/d/XuahwAo3vf4OVe260dO9GDz/LF0taY2JgZRuwJFH+71p2s6e6Gc6wd9q
 r+awTUM4LomSN0mbcvMS5AApUIo2SXq4KcskNRM76uaB/qg+GFSp0orNQwLYGPczdde9+Uzfv5N
 OtMEcCHak+fm4zJo1ViR5TRUd+Sh8DYE93o4vG1YPwse+MLq9WyR6GXxP/GXTM6+StjR45/gZBE
 LZ8UO7OzfRElvJ2yUpx6C41rnyR4iDW9WJXKMOr7TftFuqnvzPIh8apKWIu6qeJw9ZfH3UWoV8l
 djy7J7oZ2S8dpbCfM2YQ0l3aIfbs4rNDeKGXdRI6feRjIpbjVR4GdOF3xfWHr8268HeMgJZU/gN
 Q8liXtIab0gmjw71xBPsoJWCWwudY0oXBYR1vzJIlay4K0djSjEkrqUOTTXQvTIGfe1Vo3u+C0m
 kgg0z3rPmehNiZbsfwA==
X-Proofpoint-GUID: d2tqFbBiahbmA6Y3RuNjkZUlmBs0uTiR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_01,2026-02-20_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 lowpriorityscore=0 bulkscore=0 phishscore=0
 impostorscore=0 suspectscore=0 clxscore=1015 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230073
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267293-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,msgid.link:url];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 47B33172FB1
X-Rspamd-Action: no action

Document the QMP UFS PHY compatible for the Eliza Platform. It is fully
compatible with the PHY implemented in SM8650, so use the SM8650
compatible as fallback.

While at it, move the QCS8300 one so that it is sorted correctly by
fallback compatible.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
Changes in v3:
- Fix commit message by dropping extra "the" word from last sentence.
- Picked up Krzysztof's R-b tag.
- Link to v2: https://patch.msgid.link/20260220-eliza-bindings-phy-ufs-v2-1-4910bdcc585a@oss.qualcomm.com

Changes in v2:
- Fixed the order by moving it below X1E80100 so that the fallback
  compatibles would be sorted, like Krzysztof suggested.
- While at it, moved the QCS8300 in first, so the sorting of all fallback
  compatibles will be complete all the way.
- Picked up Konrad's R-b tag.
- Link to v1: https://patch.msgid.link/20260219-eliza-bindings-phy-ufs-v1-1-1635e7b53049@oss.qualcomm.com
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml        | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index a1731b08c9d1..9616c736b6d4 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -16,6 +16,10 @@ description:
 properties:
   compatible:
     oneOf:
+      - items:
+          - enum:
+              - qcom,qcs8300-qmp-ufs-phy
+          - const: qcom,sa8775p-qmp-ufs-phy
       - items:
           - enum:
               - qcom,qcs615-qmp-ufs-phy
@@ -26,8 +30,8 @@ properties:
           - const: qcom,sm8550-qmp-ufs-phy
       - items:
           - enum:
-              - qcom,qcs8300-qmp-ufs-phy
-          - const: qcom,sa8775p-qmp-ufs-phy
+              - qcom,eliza-qmp-ufs-phy
+          - const: qcom,sm8650-qmp-ufs-phy
       - items:
           - enum:
               - qcom,kaanapali-qmp-ufs-phy

---
base-commit: 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f
change-id: 20260219-eliza-bindings-phy-ufs-3d95c2377aeb

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


