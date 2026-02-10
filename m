Return-Path: <devicetree+bounces-264339-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EJWyArgKi2kdPQAAu9opvQ
	(envelope-from <devicetree+bounces-264339-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 11:38:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A7FE3119B30
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 11:38:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A8C2A3038A50
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 10:38:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED90C3168E6;
	Tue, 10 Feb 2026 10:38:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WJHTnneK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ro1hGxOl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD5153168E1
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 10:38:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770719910; cv=none; b=MXOgbfuRkyMVINkH1sA1UYlx7vW2Lrjb06jrxuDLbuA3bU4UH9MCYX2Tou4jUgOcIZ5GxQx6g43pt05StLztt8I1gchJZ56ryhpDqU7nKhs0frzQeTBkDHTxTdfMO4El8jkwfGq85KQbnpHVwQ+N62Vvwoq08U8xXJyEAAwqTuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770719910; c=relaxed/simple;
	bh=TE2JT+7Pb1rb1noqzyf+GrWgvLUtV/UvDD0MIYK5pug=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=MomYVFMvtgVv82HoM0PpFko6rvocM92iwYnBfaErYs8bnqcndNHBq+O/xHYSUz99ni75uL+0W2b22wEjZv6nbP9PWkMUYE7hgiMGU4rCaS1EKGZL6q6oTxDEcytBl3N/029pLBOyayDS1e17n/1rqcGNRcNOMy2TaVVZ5v6USPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WJHTnneK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ro1hGxOl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61A9fVgl4101889
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 10:38:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=YTzoWTPkh6Y0aUBpRMEup1Snn7l0tK5Ydsc
	Qw920Psk=; b=WJHTnneKbiaohZtLkjxkP9TRmZAxIxMkhNPFwxniD19qqGCkZHb
	kU1GJaUdLTq7f5C/hHLoMqSgrwhYMRmUJ9cTt9e4jfl+zf2GI/zfZpYb8TmV5/if
	7sSB399Tq0QOdG81WxKaw4XCHEmM9sEHnmorO5mgDEVsSDJ39IxoHYXWCrK4a8bW
	k290A+3J54xfNQFgAWuA02756HFsKJ9q+iMHLuWVa3tDEl0sn2l1oKBR8g3P6NEc
	1WfimSU4MHAi8T3hY7kz4Y9gJYY21A3b9jug5XIYkBDEREcX0uN3Y1Rcc/BVUcbn
	43t50RlUQTXnjMvt4EGPim80JVQ4HAOp+4g==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c7k61k822-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 10:38:28 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a7b8fe7c71so21988105ad.0
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 02:38:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770719908; x=1771324708; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YTzoWTPkh6Y0aUBpRMEup1Snn7l0tK5YdscQw920Psk=;
        b=Ro1hGxOlBRIwqzVwHQcGSv/01W2uSxrQ8FZNDDBG7V+lDkMaw00rjqnazTjA6NEHU+
         uzHpTTVd6gxWwzpV3SuvjqoqMmtWdaUUGTQ5RSk9hJ74d2cU+Rdpgnf/GsNGeO4RmIhw
         X8TIQOyiMIf/+cfazaMkJlrrKJom13W8vfdtUyBY0SxyYdkoAqKqx4F/d0ITtqTY2IGo
         OioU2uO2yM7iUTzrL3FkT9KYdneIXbe6ViY5sGB3rc8XjkqJyH6XROwPtr0dpaoODOji
         HkFWzpnEqJ9wFLiHdqUTR4fHWgudqmxJs1j4FPz0EM0OraZUQo/zgBGVY2AR7p8HXZ/u
         f1EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770719908; x=1771324708;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YTzoWTPkh6Y0aUBpRMEup1Snn7l0tK5YdscQw920Psk=;
        b=IGrCRTm4HUo4l2Tj+ynWV9Evvt+o1UovleKrkyS6zKrN3CTArzCblsz6RsCgM3fb/O
         uUKbG2dXxaFyFouz5qiU88MpTy0B0RksrOWpKQ52XxA5TUEJIqCvcHOFD2sbkbrsD3Pl
         7qit1O3HN9sMvXEz1+OGWK9PkUyTZQnqhdXNkywjZAHtzU9lLxKehdLHvMDdRMx0SU+a
         KtXJ9af8NTRtyJf4B8xnt2wHuCHWS7/oIUi6sH3jvcPHXejOxoWPUyaXpYuFL8fg2Mta
         jC34i6/IXWlRE6nfNOJGnRSFGqAOcwp3dAX/eXShAYutzp477SVAHmf4WX2udowkcrlJ
         93QA==
X-Forwarded-Encrypted: i=1; AJvYcCV16Ewy+yvs53W04PaC+1FqwcFaRcDQpaJBf16DF7J1KBj3NLa0onoNXZC3P4nq/5ny7tvs/lyHFgWq@vger.kernel.org
X-Gm-Message-State: AOJu0YzTtOpCY+1RJ81x2HjsMUI2j0B7T2gdfR0tfDpkwRmFidpLjl3e
	ZN+fruldJqpmFm3/zp5LNF5dBPVJNxec6S24Z1PSYZjxYrcfCWhk6xxtYxYd9MaLYXwq6iYe4AK
	MgS+s+uVHZnbYWgCwQXZuYDwli9y9ptU8LilZIICiA0Vahv4Qb/A2k90n84OdeotB
X-Gm-Gg: AZuq6aLw283JPTP20k5NL5w/F5q346zJl17l78bEpUQ3mTqULjTUDnU5GyuQUoWDHgK
	XbqDksY08hGWVIiwGgCHhM1eNpUGptSpwij8GugP/wcgWGNXbzylMDuiMOHKo3UWUJKur4d7sJv
	CFsZCQ21niPeF0H2uukmxfDwNTiZCD+LkqV/T9OC5cJ5esUZTHGSnYbx7DfTi3WEke7JGtPHUqE
	BGvV/0MFX6+ETKvSSzyLWBku6V/aEkOxly3rnxleu2si1U9cQh4kvtdlKQNZ/7VwH+krmHaDA2M
	49AqQsbA4Q1T/lbsYtQlLRNB/qTVxskLpBISs0pVQ8Gs2d0hOzEn+2f9iSLraXKwRXSxZ/HI+DO
	9Rlkb2zPJ37RtJdq8lmUoHDyeaPo04SMQpKcrJn+BfRikmjwQgtP2
X-Received: by 2002:a17:903:2990:b0:2a0:d07a:bb2f with SMTP id d9443c01a7336-2ab12e64830mr12155655ad.3.1770719907674;
        Tue, 10 Feb 2026 02:38:27 -0800 (PST)
X-Received: by 2002:a17:903:2990:b0:2a0:d07a:bb2f with SMTP id d9443c01a7336-2ab12e64830mr12155395ad.3.1770719907161;
        Tue, 10 Feb 2026 02:38:27 -0800 (PST)
Received: from hu-uchheda-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a951c92fc9sm143649365ad.37.2026.02.10.02.38.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 02:38:26 -0800 (PST)
From: Umang Chheda <umang.chheda@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, richardcochran@gmail.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, umang.chheda@oss.qualcomm.com,
        mohd.anwar@oss.qualcomm.com, krishna.chundru@oss.qualcomm.com,
        monish.chunara@oss.qualcomm.com
Subject: [PATCH 0/1] Introduce Monaco EVK Peripheral Mezzanine
Date: Tue, 10 Feb 2026 16:08:20 +0530
Message-Id: <20260210103821.4169-1-umang.chheda@oss.qualcomm.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=M8lA6iws c=1 sm=1 tr=0 ts=698b0aa4 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=d7TsYWnSsgK8SPPrtrgA:9
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDA4OSBTYWx0ZWRfX3xYTlVaMx4eR
 M64aF0nsG1uahHu/vHL2t4G+I7yOTBB3C+ifaZ2hH7oz/aHsPONr+tnUl6eg8fEs1no2AlbsP4k
 4gvwhEpbOT3ns0nVfJ5OuwqEBsQdQJG0Q+B7tVHy/RvGyFdUPK75Ow9vLbYpG4VOACtNUmbY71L
 lyNymjEfK+pxyYnwQjwBPcaYyX4wDKz63LaPryVKv0IqkqZiopndgTB9adSHZfT01ZAgGoMKbzy
 AubJjjjPVJJt5WUXi4QPxSiAzJyi/64nnQbXMxS9wOc6faKblL4VSVgAtQA2QtrILS1MiCcpoZx
 EY6NSSgo9isQT80W0o5L52P/pl327OUo05lAavXJ413VuxRj3Y+zdLATB6bbvZ1Q0B8w1L32SvF
 wwsEkuI3z80XcJbkj5ru4LIN1VohXKCIave08UkmtpVjhu7ur2nevrFXHOr54FcbnkdbPoIijqE
 pGhu+PNPHhIQWoHMmYw==
X-Proofpoint-GUID: 4SjuC48QhwmJVjEj7ziHfTehd9_Eb2Yl
X-Proofpoint-ORIG-GUID: 4SjuC48QhwmJVjEj7ziHfTehd9_Eb2Yl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_01,2026-02-09_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 malwarescore=0 suspectscore=0 spamscore=0
 bulkscore=0 adultscore=0 clxscore=1015 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602100089
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264339-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	TO_DN_NONE(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[umang.chheda@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A7FE3119B30
X-Rspamd-Action: no action

Introduce device tree support for the Mezzanine peripheral expansion
card used with the Qualcomm Monaco Evaluation Kit (EVK).

The Monaco Mezzanine is an additional add-on card which can be stacked
on top of monaco-evk board to extend peripheral capabilities of
monaco-evk used for industrial applications.

It connects via expansion headers on the monaco-evk and provides
following peripherals :
- 4x Type A USB ports in host mode.
- TC9563 PCIe switch, which has following three downstream ports (DSP) :
   - 1st DSP connects M.2 E-key connector for connecting WLAN endpoints.
   - 2nd DSP connect M.2 B-key connector for connecting cellular modems.
   - 3rd DSP with support for Dual Ethernet ports.
- EEPROM.
- LVDS Display.
- 2*mini DP.

Umang Chheda (1):
  arm64: dts: qcom: monaco-evk: Add Mezzanine

 arch/arm64/boot/dts/qcom/Makefile             |   4 +
 .../boot/dts/qcom/monaco-evk-mezzanine.dtso   | 189 ++++++++++++++++++
 2 files changed, 193 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/monaco-evk-mezzanine.dtso

--
2.34.1


