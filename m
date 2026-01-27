Return-Path: <devicetree+bounces-259767-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kERDFR55eGmdqAEAu9opvQ
	(envelope-from <devicetree+bounces-259767-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 09:36:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AC6E491251
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 09:36:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4FC0C3071043
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 08:34:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89B072D2486;
	Tue, 27 Jan 2026 08:34:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="izWPlrT1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="etoaIHfe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB24529DB9A
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 08:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769502864; cv=none; b=B670RFcc8JtJvpIIwCnnyqslZFnRk57QvCAndCNnfNLAoKWPh82KQOwTidLbicB14cELUdm9BQvozyW1qS6xOZVF8zOtD5qvaEwUlZxZU4Xcpd87+HXKRZrP/OAZOa3dlqCMGDHW7RgkJXUNvikq3qpL4B7rCr+lj9cNDbqdM4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769502864; c=relaxed/simple;
	bh=r2hHl0BjCYK85CXM9jjubu6UCLnsCKW6S6Wpdp0/dwA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=g/3NQS6ASh6BoqqEvZpHh5bCEWrga5bxdEu9ypWG1CsF/QeIazJ1MH7UNVMzeoZ1JHWP2nJG1jzjHmXGIP6ZFiu4ATtgVu5q7N0BODL1nHWGkeTHsz7EIKTcbj3g0GbWlbGzcGi+pdrj2il5LS2/yBwuexaQLfvQT3eKcIdkLx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=izWPlrT1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=etoaIHfe; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60R4UCoX787073
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 08:34:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZF0UqSDEDidBomRoEe0j4fTp1VN0V99nqY+NyPVNW/Q=; b=izWPlrT1Zvw4WysL
	dIPFAEFob+AZAktTnf8byqX2HjXjB4QeCIdOJrhFsJEIHg0sU8iELZ9c8YOtNiP6
	jPp1RilSFMC4V+xBlprSaaV+2r9N1SuGtlPhhPkD9hVOn4hj7I00l+O+pSWCATHm
	eIZg0gpSOUgG99hvYMMQk7SUkxscOE4zRG6teGEKnz0AcNNUV2yURwSy5jWf47hJ
	VQdt/f/M0bp/jGlqkMZ7ZmujHkwiZmq86XgN6KJzUO7/gdaS3jGIWhdLG/OvR85h
	lG94avpVeLZ01SgbR8tBgPWP6Z3mtM2ZUA/FshpI5kzPZV0HNq0SkT0X3zM9vINF
	JMbdNg==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxg93htkv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 08:34:21 +0000 (GMT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-124a38e8980so202946c88.0
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 00:34:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769502861; x=1770107661; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZF0UqSDEDidBomRoEe0j4fTp1VN0V99nqY+NyPVNW/Q=;
        b=etoaIHfecA2MR1Nljb1NwVjArn/3SEZha6ZxYj8nVF9PwoIar8Cpp3HIbfcqmGQ/W5
         6zzPWEUZl3kxBC1+g2lzezPqjDHI6CopYMZl9yxEAFQexyWMl2TxP3yNvPuZyXg5vaz8
         QvHzMzChVjHeCUa6/s4TlZhUKH4QD/Fro4Hfr2FfGpBz1uAiZXT8XYcwqE0oId1wjVm1
         L59G86TxXWe+1Yor1sI4/vbqYGUBnNyDOFwIruhmF8n1wLGWXx//5pWGQ79gTmJK2Tg1
         yJQrEttxM14hklItDwn7YSFlGVp+qVj/QeSkpiYGrmSg37Yw3nB4sOBZnoHK16rfq2sT
         /bvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769502861; x=1770107661;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZF0UqSDEDidBomRoEe0j4fTp1VN0V99nqY+NyPVNW/Q=;
        b=JZ/SVbQVCR0yBBTMmIlsG/jeixK/TjfpFp3u1ScSDSSZVPYwey6r3/ns84f9hC4lu0
         GWNeju/bNGEejKBzRyBRNzSbfrJvM3S7wmYc7SZLONATHttjlAtID/nlDeHQer1IV7sa
         Cvi4s9zT7QBktVyUJx7dnKYwjsjSa0atZOJ/AODUjJdCKQX9Y2zwDvdfy3zho9OcIoMm
         zK2VS5lGm/lz9+T0CNF7XNmzn0ZNWP8bZRTfU0jTpU74RQqSTnAZ52F7n8dpcPP5ZFyJ
         LXZ7hi0RhhE5YDjwjW/vcaFfAKzAIcp6mXEAyxWAPjqPSHOpm6Djsq9ijvpwkOAQO6XO
         KghA==
X-Forwarded-Encrypted: i=1; AJvYcCUPLFx5Zy8wRDgrU/dmA8VKukEQ4a4zUM2b4Fp3QM62EWnvPsapS1uB5v6++RiQeZW5berjbbs8wWHC@vger.kernel.org
X-Gm-Message-State: AOJu0YwTjkNihVTs6m/6RGMpYYawJo0HcKg7/YjkhecI5ti3+7bWfTb2
	a5sE+zv2RQ0NcGacLYzAUKnvyqMsJKmcP1ftld2/yhhY9HZOlyruG5D2Z2piZ00CcB0TqmVCmsQ
	WpEvxluswgf/9Ew5PpkAhMz6oWg3yfMhK8yRFfgSaTaG82KlsHRtqWiB8Ijt5wZEG
X-Gm-Gg: AZuq6aLjKCxdSgitqquX92jOINe92nzaUoGz1J/61OQ/kdehUydvPlvbzzLaAAvAWDx
	4USCcPmt/j+gfmwNSruotJDgWwFXAFXNzuWnND297Nlt64wn03d/6dOzTBGrh2/iaLUXt+Vn1aD
	RF+72VFH2ecmCgPugjToP2zyCCIKVbHLRf52OtnLNSa1JiT/wy4KD6J8GTDGmiwrSDpH505zuTZ
	H+fv2gkT47pds4UNtiMVNyZg5YA/mrUcXIlxNExZncSOpTUOr94mc3Z06nJ1ugc8awNku7pXI6Y
	Axkia6BzoJsWAZ++oQ+v+w6T30ny7SmTFPYWPKtRndq0n7BXozwRAKcVWP7Uv5ow3dix2owbBD6
	dQWBETj8GLjxQP5/PM+rzWqkMs21JzJnIAPjuDLnnlcxjZGnkHC14oyJFs3ns
X-Received: by 2002:a05:7022:1a83:b0:121:9f05:7d6e with SMTP id a92af1059eb24-124a00e8aaamr553898c88.43.1769502860602;
        Tue, 27 Jan 2026 00:34:20 -0800 (PST)
X-Received: by 2002:a05:7022:1a83:b0:121:9f05:7d6e with SMTP id a92af1059eb24-124a00e8aaamr553874c88.43.1769502860031;
        Tue, 27 Jan 2026 00:34:20 -0800 (PST)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1247d90cda6sm21064235c88.1.2026.01.27.00.34.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 00:34:19 -0800 (PST)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Tue, 27 Jan 2026 00:34:07 -0800
Subject: [PATCH v4 10/10] arm64: defconfig: Enable Kaanapali clock
 controllers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260127-knp-dts-misc-v4-10-02723207a450@oss.qualcomm.com>
References: <20260127-knp-dts-misc-v4-0-02723207a450@oss.qualcomm.com>
In-Reply-To: <20260127-knp-dts-misc-v4-0-02723207a450@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        20260114-knp-remoteproc-v4-0-fcf0b04d01af@oss.qualcomm.com,
        Taniya Das <taniya.das@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-3d134
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769502846; l=994;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=W2s1aaxDJAQbl+dVc+eFxjzAccn2ya5EYJntZUPLJOA=;
 b=1k/9iyJV/Cp3UUZYpUjYUTn0x+mtarnbIiIOrRYJMwAh6osCfeJakm1OIM4KdCSLtXQHH4BOn
 EuU9nkZWGf5DBe7cYtmMNMkA+g8J/hyhFzXZfCB2S07r/FCxEQQzgyZ
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDA2OSBTYWx0ZWRfXymD3oH5kt4a6
 PGcYrLkppQGdstufHk+8NTxdq3P7iuO+cbMcRg2DCZkC1dwYUMA9m/sJk/d441Q+XAFjcmoLqYX
 hhm6cMpgWqxK9WtxopW6EhYTi8jMBDoHmp/S/5gjbflHm7fN2SO1TuM0arNI1LkLXfr9DlZExHP
 hdTUvzc3+frfJLrq2HJ3QHMC81WJ3a/XulV1FX4WEM2DofrJLaaimwXUWaHilbh1JwrifeLthOZ
 cu8c1zSoLlsgwRu5GflAq0321vbzBk63twwc+R9SfVWjVuHV0CqH1kiW9BO0wRPN0dsq/BdwHMy
 63zuHMjuyQDpYNrEG3fxKjMDAs0ox8nd0c56Khz5HLO1Maf4Fl5SK8baS3Bv839yD9bag/PetiP
 wZRvfAwoEG48ZjQjvq8KiG2fsHjAc/1jddjJpEvcg8uAumR+N+UQW1RZYsUIxnJrrlMcI/KyNp3
 qosgtuKd+Z1wu+8IhtA==
X-Authority-Analysis: v=2.4 cv=Uc1ciaSN c=1 sm=1 tr=0 ts=6978788d cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=hvWDQT85v1CTPbyC7zMA:9
 a=QEXdDO2ut3YA:10 a=Fk4IpSoW4aLDllm1B1p-:22
X-Proofpoint-ORIG-GUID: Vnuoodxlx2yFb5I3cpcV7YIMwq9lEe88
X-Proofpoint-GUID: Vnuoodxlx2yFb5I3cpcV7YIMwq9lEe88
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-27_01,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 malwarescore=0 phishscore=0 spamscore=0 bulkscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601270069
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_FROM(0.00)[bounces-259767-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jingyi.wang@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: AC6E491251
X-Rspamd-Action: no action

From: Taniya Das <taniya.das@oss.qualcomm.com>

Enable the Kaanapali display, video, camera and gpu clock controller
for their respective functionalities on the Qualcomm Kaanapali QRD and
MTP boards.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 arch/arm64/configs/defconfig | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 7a6d7e70d383..66ba440d0123 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1454,8 +1454,12 @@ CONFIG_COMMON_CLK_MT8192_SCP_ADSP=y
 CONFIG_COMMON_CLK_MT8192_VDECSYS=y
 CONFIG_COMMON_CLK_MT8192_VENCSYS=y
 CONFIG_COMMON_CLK_QCOM=y
+CONFIG_CLK_KAANAPALI_CAMCC=m
+CONFIG_CLK_KAANAPALI_DISPCC=m
 CONFIG_CLK_KAANAPALI_GCC=y
+CONFIG_CLK_KAANAPALI_GPUCC=m
 CONFIG_CLK_KAANAPALI_TCSRCC=m
+CONFIG_CLK_KAANAPALI_VIDEOCC=m
 CONFIG_CLK_X1E80100_CAMCC=m
 CONFIG_CLK_X1E80100_DISPCC=m
 CONFIG_CLK_X1E80100_GCC=y

-- 
2.25.1


