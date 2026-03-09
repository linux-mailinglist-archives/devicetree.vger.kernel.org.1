Return-Path: <devicetree+bounces-272839-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6GIiEFaormkFHQIAu9opvQ
	(envelope-from <devicetree+bounces-272839-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 12:00:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 966872377A3
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 12:00:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6D8FA306466B
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 10:57:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75239394468;
	Mon,  9 Mar 2026 10:57:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SSFscetU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ODQrqPxJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B21D393DCD
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 10:57:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773053825; cv=none; b=ouNGha91gT03ZA7JxISe5lxBKW7HHKTOr5YKxuJcKtXS28U1iDw6YPZQu2Wh2quECuU/sLTT1gP74pVugj+u28p4CGXesrc13RI7tBY2SBXrjaR0lyc8iky/bU4gMxcM8shOqHpdetEojWIJWv3VFA2lnXJtr4Vbf6Zz/RrJX5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773053825; c=relaxed/simple;
	bh=h05n1j2+/XTNmxeWIGdrGzFT2nPNpwxAzQWqQrwQYXE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=PBZ3t09iWiAXczSUGLRfWoCV0tKCEImmNWVzYxnor2GYscVpBKp1b/02brsAaiQP8lDeeozElx6N0hEimzHd5gkoU0CufDJxNuij0BRWpg1UUuwCtLS81qLLcOVZmHM9izmbuwGmqbDoVnUs297FuITEO6J05SFZr4K6s0wdh4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SSFscetU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ODQrqPxJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 629A3o1Q1587409
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 10:57:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=/0hw24bFTR9TQIg1Z7GNez
	wbbqnhMlwTf6wvITfaa5A=; b=SSFscetUYDFyAr3OqFL/IukJvIPSY7EPFlsS8M
	6dL/LzXCuBM6ACNva1Keri/DRY/a/jVOTMMWxCpkb6j/eyokQE6nubNWssxRO4g/
	j2Qe3o90oZeSWx4/srdGVw4LkYIUs59KFUg+iXM88L53c8VQ+hvSCZircVengiJe
	hGdx6ulLlRCngNuFe6nFfaoQyxnW4x9L1ub0YM6yjAsevYaXYlChJV49E+bcTd0n
	vjMh0LP1lFRr1Z80J/ZKXD7FyUtifHStVma1IDDsDQKarwJzNcRFlHBVrHJyxigt
	RFX7sbHbqn2dUkDuc5vk1XLowI09Y++ZDTAR0/Vv1jWAzzZA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4csqcy977b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 10:57:00 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cd80bea54dso747294785a.3
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 03:57:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773053819; x=1773658619; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/0hw24bFTR9TQIg1Z7GNezwbbqnhMlwTf6wvITfaa5A=;
        b=ODQrqPxJC8WUL5v6/VQNHpjfvzZFB6pvDWC5GpQw85Mn/kHW7gotsbW/pET/TkeTja
         ZDGUAosp7X1DnSrDNkYoBRY4Fr7dIWKsKV9czxmv8tNztLsc+NwhO8vvM/8xBF8IC729
         8pFDlWrfMjmGnQUjBrKf415R0F9rxz745TV3OYne/STQauU3QHz98etGdu0RsLmKADtx
         gttTnJIYgrUlUo7pEpY4MXrC3irVh6RiwsziKQuWzBHbkdFEi76ZXLoSI/EGrLce8Pfz
         Dhl1UmfXpgcwq22f5G6+YTQf9kP/aLugLA6fKZXuQnc5hx+hANl0dH2jCEThUkkne9bs
         p7hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773053819; x=1773658619;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/0hw24bFTR9TQIg1Z7GNezwbbqnhMlwTf6wvITfaa5A=;
        b=Hhr6B1fRwTJwXaGruboInHtM5SSL1bUmblfkyXEIWnq+ID+awSCIMhdKh0yML5eNv4
         Rz6z7SQUP6Ehd9aMbFMk9AKkbjaaOdRDrPELc7i6fBrP+tV9fLHmveEDBlK5s3F13r3/
         BPbb6umWQxkFNDDc0yTxCO7FuXIy48IrdbTIYxrq4myXueeK3Ap0uavRGVBmmSw8VAQG
         yb0F3EnE2qopm4OjTwsiKU6hST/widnuVmQQw3VVIO8zLggqRzpFEhhk/IuhDu/bsCzw
         BOqlc+YI0KtrXbab5cFBm8EAO1a0+0cpwrLZN7mgrNVluGAawIiMVdvZCO4W599qldPK
         8p9g==
X-Forwarded-Encrypted: i=1; AJvYcCV3+GpJaQvCE9YcWu2Znt88vrUPtD/hIMuImTVF+oT5ktBywEdq0Vvq8s+ChSPeuBMa30NEdBBldk+K@vger.kernel.org
X-Gm-Message-State: AOJu0YzL17ihKuLU/UYdhCgF54qZXbSTrg6fWP7ynBgdV3h4HMNw3sdg
	DwFquPhIYbjDgTzagSuXmbl/jhgofonI538mD/wmPJOQ+Al8HKMlAL0pilIjlJOuPA2C6P9oK2h
	eZAEvRp3OYQoJ3m73hojFAjzw2V7dSWlGscBA7ruUTQMYtPW9TTZxGik/LliECW3z
X-Gm-Gg: ATEYQzz31C3mmOJcSqrs7d7IT8L4+D3fue0VqSC1Smghu3aRr9PQEmy910OYCwg+wJS
	vEmECsNm8hjuWZAVxW00DntPCVyCdpfKlhrTXSsYMKXfaxt20yH3CgnT/KLvo71DQj8T1aGS7V1
	G5VGXiUHwzYlT4oUgA0GX6jtAiG7KDr+Q7XlzH7d1RVjDLIbgTayOokBOMPvC3KzmWzv2XbSjjy
	BGBNTkvLLw/G5UTZ6FVHecHWEkgOn/WWRAKsQAIU2hvnzqFns+CN1fqdu4Y7vqAPGMxjEjmXstv
	xdNH8GQYucPE2LGb5fSkapoHyUcy6s6+THg/2ML9E7GMOQJYu/DGrzI8WZKtkxfakwvIqk/+IVE
	4gVI1MqbVDjchhmhFFBQSXbNWx/MuAQ==
X-Received: by 2002:a05:620a:470d:b0:8c7:8cf:537c with SMTP id af79cd13be357-8cd6d4a521emr1298374485a.37.1773053819488;
        Mon, 09 Mar 2026 03:56:59 -0700 (PDT)
X-Received: by 2002:a05:620a:470d:b0:8c7:8cf:537c with SMTP id af79cd13be357-8cd6d4a521emr1298371085a.37.1773053818921;
        Mon, 09 Mar 2026 03:56:58 -0700 (PDT)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dada3b43sm26169971f8f.13.2026.03.09.03.56.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 03:56:57 -0700 (PDT)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: [PATCH v4 0/3] arm64: dts: qcom: glymur: Add USB support
Date: Mon, 09 Mar 2026 12:56:50 +0200
Message-Id: <20260309-dts-qcom-glymur-add-usb-support-v4-0-6bdc41f58d18@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHKnrmkC/42QQW6DMBBFr4K87kT2mBjIKveourDxkLgNgdgGF
 UXcvQYqZdFW6cbSWDPvff07C+QdBXbI7szT6ILrrmnIXzJWn/X1ROBsmhlyVFzwCmwMcKu7Fk6
 XqR08aGthCAbC0Pedj6BEYZStLJdYs0TpPTXuczW8vm1zGMw71XHBfm94ug1JHbc11lIIelUfs
 lUsOUJ/njZxKwVQUiK0+oPAU086koeujym8vsCIIMCaphB5XSDfq2MXwu426Es6b3fpWbRGB4L
 lw8VDprkm1LhXPFdsiXl2IXZ+WnsZxZpqq0DIpxWMAjhUpVVWloVtuPjpXxQjPrCI/8BiwjY58
 UaW1qCwf2DlA7v09hQrE7YsJRlUldD8N+w8z198/EQeKgIAAA==
X-Change-ID: 20260109-dts-qcom-glymur-add-usb-support-617b6d9d032c
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=2594;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=h05n1j2+/XTNmxeWIGdrGzFT2nPNpwxAzQWqQrwQYXE=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBprqd0s1//nP0uoTYwvMG9sy9LJGw9X8Z6JbbqI
 xI0B6pL+3mJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaa6ndAAKCRAbX0TJAJUV
 VjdjD/47/oqCQkWI9SRHTdS+/ENJVWDAN6dun/SQPNpFUCVOVV45TZN8cN2LSjt5mkK9P3grSTL
 s181BEJ6FJ0JyqK6qYsw/Vxd6nhgjlnAytGyynxfVQhl8SMouyKNcudkTgAa5C4ldxDJogZZGhY
 rXNafuDkIOkVcRWMkjl3s55BqbQXDqCClBx10REMAK5Jz8zvIcL6Xi8tjyGlMYOrDVgfeZQ9Crm
 uEEklelNegUBapskJvjm1+A7WKXw68tbizuRh39Y9XY87Bg4WorHFNaz0iuATPfTmlT91AbEdOq
 J4AcZbDGACIoj5elcFtxJbyD6MCELXBfA7CrWpdz07e/4kt6G735lbr9rMluSKPgKdhku5MCez+
 tY6KQIk0cRM1mVlB3Fx6Vef9xQDlZMgrHcQyw41eFQGcKFr4ol1UpnRGzxuH5ZkBaJdk7258CTW
 qegom+NSyC7AzadDdOXsvAI/CACF4o8NraJGoyfxEeFqUMMFtXeDAcQqLZo1ZqTSq3B2GnIchOV
 WSNWgDdF07bp/FoWWa7VzqT5dIA8l3cfM8EwfnE01rQmGH96xaoqcBTWwEN0qkQOB2SaPTT2Kxq
 wwYl1VSuoxUwyCKCbOG8I/SsGtqZNRbsRExswav7FcpCSokeu8nbEbgmYMUdnwTkn1VQarzRBWl
 EEhbsNk+GIVgnPQ==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDEwMCBTYWx0ZWRfX3XhUC0O42fWA
 hNPzgpVOeItel0I7cKsZNxgCt/1LstRo7mEYcxV8dPv1oY68mxvVka8LW5Fh8X89QOqRWqxNM97
 /nqHHK9eS+JymqVZAFSNinCmxyDCgXwe66UU2FZPHyjL3ivpxRQ5UZw052/p0Q8ovTSAQGLihoX
 WjYwuGBDY5yHDu/5sch8IVAlS/MHwrnx/o5D2d/vVmhTMdPtWI0UTYtXGQPZd8no0Iwb0//eFf6
 dW6KBQfRLGhRu8tbJbMp3E/wF8vX8h0QDXDvQ4OHHCHqS78pkMO8wea6mloFf15Q106u9UQn3uZ
 rHxJcbDO2qpazzR2JAqLJo8am5PrHW3Gx6cMigGQ1lOUrMMDUUnErLJf60mTtOOd/+iT0oww/yS
 0Ztu1v3qo4eteMpw7Y8ckeQmbgXO0xPXzHTZOBTt1qGV6gkGLq+gxlAursyqmvHJL3ajW3Iu9Hr
 brYDtMypIU8Ec7hXWvQ==
X-Authority-Analysis: v=2.4 cv=QJtlhwLL c=1 sm=1 tr=0 ts=69aea77c cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=E5JcmwgiqHGAA_JIGHUA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-ORIG-GUID: jhUzXArhCwXH_YE-pO9IumMOC5klsQzB
X-Proofpoint-GUID: jhUzXArhCwXH_YE-pO9IumMOC5klsQzB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_03,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 adultscore=0 spamscore=0 phishscore=0
 lowpriorityscore=0 malwarescore=0 priorityscore=1501 bulkscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603090100
X-Rspamd-Queue-Id: 966872377A3
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
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272839-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,msgid.link:url,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.976];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Add support for USB on Glymur SoC and its Compute Reference Device.

This unblocks the upstreaming of the display support, since 3 DP instances
rely on some clocks provided by the combo PHYs.

Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
Changes in v4:
- Dropped the RFT as I've been able to test this myself now
  and Pankaj tested it as well.
- Added missing second compatible string to pmic-glink node.
- Dropped the 3rd Type-C port support entirely from CRD dts
  as the SKU that I have only has 2. Re-worded commit message
  accordingly.
- Forced dr_mode to host on both Type-C ports.
- Picked Konrad's R-b tags for dts/dtsi patches.
- Picked Pankaj's T-b tags for dts/dtsi patches.
- Renamed the second PTN3222 from "_2" prefixed to "_1", as Konrad
  suggested.
- Link to v3: https://patch.msgid.link/20260302-dts-qcom-glymur-add-usb-support-v3-0-883eb2691a0d@oss.qualcomm.com

Changes in v3:
- Dropped the PTN3222 USB Redriver @0x4f, which isn't there actually.
- Dropped extra newlines from pmic node, reported by Konrad.
- Link to v2: https://patch.msgid.link/20260223-dts-qcom-glymur-add-usb-support-v2-0-f4e0f38db21d@oss.qualcomm.com

Changes in v2:
- Picked Rob's R-b tag for bindings patch.
- Fixed CRD DT commit message according to Jack's suggestions
- Sorted nodes in board DTS.
- Added proper quirks to all controllers.
- Added RPMH_CXO_CLK as ref clocks to the USB [01] HS PHYs
- Replaced 0 with 0x0 in all reg ranges, as Dmitry suggested.
- Renamed all usb_ss[0-2] to simply usb_[0-2], and the usb_2 to usb_hs
  like Konrad suggested.
- Link to v1: https://patch.msgid.link/20260113-dts-qcom-glymur-add-usb-support-v1-0-98d6d387df01@oss.qualcomm.com

---
Abel Vesa (1):
      dt-bindings: usb: qcom,dwc3: Allow high-speed interrupt on Glymur, Hamoa and Milos

Wesley Cheng (2):
      arm64: dts: qcom: glymur: Add USB related nodes
      arm64: dts: qcom: glymur-crd: Enable USB support

 .../devicetree/bindings/usb/qcom,snps-dwc3.yaml    |   2 +-
 arch/arm64/boot/dts/qcom/glymur-crd.dts            | 214 +++++++
 arch/arm64/boot/dts/qcom/glymur.dtsi               | 691 ++++++++++++++++++++-
 3 files changed, 901 insertions(+), 6 deletions(-)
---
base-commit: a0ae2a256046c0c5d3778d1a194ff2e171f16e5f
change-id: 20260109-dts-qcom-glymur-add-usb-support-617b6d9d032c
prerequisite-message-id: 20260302-phy-qcom-m31-eusb2-make-repeater-optional-v2-1-dbf714c72056@oss.qualcomm.com
prerequisite-patch-id: df42484b224c01014637ec5a8f56bab459890557

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


