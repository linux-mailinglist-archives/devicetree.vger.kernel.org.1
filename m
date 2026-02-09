Return-Path: <devicetree+bounces-264025-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QFKsFjvuiWn4EQAAu9opvQ
	(envelope-from <devicetree+bounces-264025-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 15:24:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C41AB11034E
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 15:24:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 31BAF30185AC
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 14:24:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3ADFD37AA9D;
	Mon,  9 Feb 2026 14:24:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bSt0fA11";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZgT4Byll"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09A2D37AA8A
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 14:24:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770647096; cv=none; b=YbYtTx0bmSx/kECKjiB4bNhDZpeIl46HRZJYLeUY1HOrL+3ytVL9RxsRawoV2xpld4gUz7YS0gwpoQk04z4kg3tk/6jULdgM1zlPJWc4n9NEYl58sI7Bz9GQkBPye2o/QFBAs/coKPFiQMMlLpAKguePgKqw0/V0r8r9WciYbpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770647096; c=relaxed/simple;
	bh=aSeuZvg9YWqekhKFo6ft9TwwRmbebmq5nYdvyjxxwV8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=XI3Eb+fOn0wyeti4j6OK+gkTL9LfxMb+1HMYIfWVC2TUJdasnUiefLS5BOj+bTIMG+vrBO1Gd97PaPnYVzHsiGrsyRqIauo26d9n2KB2XnWow8THtJV6VDBJom67qILvEKQ6e0zt2OS0/1tZOA61wCT4Z+CjqfGNtcXOwT6u7io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bSt0fA11; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZgT4Byll; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 619B9D0n3251831
	for <devicetree@vger.kernel.org>; Mon, 9 Feb 2026 14:24:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=jZDoWCD5ogpVapP8awsgfluVPPIgcNUhPJZ
	WtTC6528=; b=bSt0fA11UqBntolY6wxzZzgxmLjORaYWVvOnq2hr7i5NqVS+msc
	yUTMj1ZAshw95Ciq/6G29zdII0tzFwJcPVKv5skC5EqBbTQjNf5jSawOglfx/vR6
	HiQ3xXDvPgfYqtxosDOJ3k3lSTHJ45VLhCcdIHNPpwOPsLOwDkzmhiWZ1QveBbZL
	upM+m0jciwCrHFOAXTS3FHLEdO0HEm/C4qMH0+v5HheDd2mlX2rDhfNAqM3dWENL
	3Syd1Hs4KfT26LKfa/3VieZFRujc6vUjpeXUEsg4MlTIBk8ePYjjgDcCLlV8FAEG
	NhJegM3qlvdYcDKvKPwNI1A54E96D9K50tw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c79f69sfu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 14:24:55 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c711251ac5so1264805985a.1
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 06:24:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770647094; x=1771251894; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jZDoWCD5ogpVapP8awsgfluVPPIgcNUhPJZWtTC6528=;
        b=ZgT4Byllvy71njnwE48WHQ7tSFA7XNmb3HtxHUmBCUt6cU0Otq1HZY1pLDnqIdPIae
         7hlsJuicfEPLebqMbceo5PXE8yrekKCJo2xYTLdRwawxKQV09JEbH+wDzLzsx/t+JypK
         FdhDWYym1BaFgwAeckK3bRR5gMICaCGMiisSxumCWFYMEpL0mw7A3W+0mXLITumuMNvC
         EU2qPvT7UGyEdxOOQTvKzyzTVlUR16rGLYKLbOLuDUcE0Ezex9hMfC1EpcuIhyFBqsoC
         5OP8dCjx2mSX1yVCPGT/1bLVTX/mm5tyjf1J/4SgtpbvX2O6QQSfz1jwAEStb2VIFk4i
         Dtvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770647094; x=1771251894;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jZDoWCD5ogpVapP8awsgfluVPPIgcNUhPJZWtTC6528=;
        b=u+gJJ6oiRwmDxKMXBTOBRgf5RCgV8BvAsi2zAX7pKIHskZu60UmOtsXJeSci6aPt/3
         i3NAJuopHdPSAMAJ2U0Vzil81yLlKyvA/TO4ng4d1d4TAcjTCS9GpV2oIpfAlnzPLYAa
         AAX0SZt8oFWHfDI5Ofii23UqUkQbWmVvpyPnuI2aNYfFD3AGrrI1bc1qhx6s97WTGIIJ
         tjp4YXFKKxfu7d5bbZGlnzS4mT93+xmcvFf+45lVem5+/WkzI312rLy6/zWuDiuLxxbs
         spry7Y+X8D33l12AaSWIstkd63U8sqVJoqqGx508N2PzcdPdzaBO+kKurfT+6ZLLvyU1
         ugRw==
X-Forwarded-Encrypted: i=1; AJvYcCVWQ+9/WYwObJETmU8rrZafU7Ybgai2SCdKoIAwjEmF2rINyxoZ1lpj/Yby2z/+WSEu5/pjz5esN7qx@vger.kernel.org
X-Gm-Message-State: AOJu0YyO1bjUT3x8c0oogQZ2LHNWHP1CW84U3IQKZ/nY2TQW6V6JYhbz
	krXSIiZclNcy9HoNvjWVX7WC3Rd8blgeU6zK5Aq64IZi+MR+hP5FeipAWakEcLptrDIHq3g/1UE
	B5/TQFiEryeji0ud6Vb/y7M5+/7ugWbBSSglvJ80TNcd41Uhl5HW6Ud46N1EWPXs2dNVnrcPG
X-Gm-Gg: AZuq6aIvM0dGGYSNzd3jUg9VzUvUYs+Hdl6RRnq7WXAPKEYrLq3+OtuAKefXaWOZkKS
	KXM16h9H2uC/vapKjyCjEnRX7XElC2BzWjQZVaxCgEtQySHlQFC5qunePIjs+BOk7cslO4hQOsG
	7ePf5oJVtKd+kR+DQgqAwA9e7lQKGZYLpgXcHwFoS6yE9ZoY7tHqyxoaSuBHkzPAM4GHt6o2887
	HAKxIWTTluKuzzTHVXwHdY07+Ra6avHcQGSXqnlYEg6Q2FdNPupkRGGDTl/eBjBJRpSj0RMkZwX
	1iawl/hrVJ0Tb4aPeIqOt7P6v1sN24rUzMppG+eoWW2bR2+o6pMhk3I0zWCYVI0YMKOqI9+Rqh+
	L4/2j5pqTghAvq9Pln+k+G9+k214FXR9cRcPFjbTHPAs=
X-Received: by 2002:a05:620a:1790:b0:8c7:b0d:df23 with SMTP id af79cd13be357-8caf1db65a1mr1568473385a.79.1770647093993;
        Mon, 09 Feb 2026 06:24:53 -0800 (PST)
X-Received: by 2002:a05:620a:1790:b0:8c7:b0d:df23 with SMTP id af79cd13be357-8caf1db65a1mr1568468185a.79.1770647093535;
        Mon, 09 Feb 2026 06:24:53 -0800 (PST)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4362972fc1bsm28296634f8f.28.2026.02.09.06.24.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 06:24:53 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: lee@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, sboyd@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, alexey.klimov@linaro.org,
        r.mereu@arduino.cc,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH 0/4] arm64: dts: arduino-imola: add support for sound
Date: Mon,  9 Feb 2026 14:24:24 +0000
Message-ID: <20260209142428.214428-1-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: AR406F0Rp61ZwwL6yBuRLOerOdgDXYuL
X-Proofpoint-ORIG-GUID: AR406F0Rp61ZwwL6yBuRLOerOdgDXYuL
X-Authority-Analysis: v=2.4 cv=W581lBWk c=1 sm=1 tr=0 ts=6989ee37 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=qC_FGOx9AAAA:8
 a=Z4lo2LbhZw9Xzx777ooA:9 a=bTQJ7kPSJx9SKPbeHEYW:22 a=fsdK_YakeE02zTmptMdW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDExOSBTYWx0ZWRfXwkNLbG9F4w91
 fPT2Q9vK7kSzZJ4Xegw8bxY6SRxyh/NhfN/PGQ6cDm1NRuXdCanmyv1dfUYCWg6Yp+VnAthvPW9
 RXxJnkIjm/vDuXT/TxSK5qTUA8Pi5A7mjSCagARQ6v9YUyiuGC8+YDYlu6khlySOa8dK99dnB6/
 tfI1eQJQ1TpNwCOegdneCMgTB2SgFXUHNu4bIb1pC+iJXRADw1vuSv+weo27FiH3aHEiIKWWZ9O
 V1hBMBKAT0WFLRsjGp0H+GNPdVRp5N3JHGTAXwho+n6qS84LOU0+gdT2P+Tjhz8Ber/B2dLlFSo
 nyGl+sSLtUAJzxYsFFsfG5MRdZmPckpmktFb+4QOmBB9qmJDasqQG73jesV0syxoOOqdfQIlQNE
 u8Nw0S59NjEpwBvbPlFxRwDZinKz2uYzLkPYkCpZrRmCD4JorR0B+lDFMG5sEw8eXWIoZOeTLgK
 PLHWUJUW5V5zOnDRcXg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 bulkscore=0 lowpriorityscore=0 phishscore=0
 impostorscore=0 adultscore=0 malwarescore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602090119
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-264025-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:dkim];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C41AB11034E
X-Rspamd-Action: no action

This patchset adds support for audio on Arduino-Imola platform which is
based on Agatti SoC. As part of series a some of the patches worked by
Alexey are reworked and sent as per previous comments, mainly on the
dt-bindings part.

Other base soc level dtsi change is picked up from 
https://git.codelinaro.org/alexey.klimov/linux_next_tracking/-/commits/rb1_audio_wip_v3?ref_type=HEADS

Along with these changes, add sound nodes for the Imola alongi with
defconfig changes.

It made more sense to carry the previously sent v5 version of dt-bindings
patch into this series as the dts changes have dependency on this
binding change. If this is not okay, am happy to send the dt-bindings patch
seperately.

thanks,
Srini
 
Alexey Klimov (2):
  dt-bindings: mfd: qcom,spmi-pmic: add compatibles for pm4124-codec
  arm64: dts: qcom: agatti: add LPASS devices

Srinivas Kandagatla (2):
  arm64: dts: arduino-imola: add support for sound
  arm64: defconfig: Enable Agatti audio drivers

 .../bindings/mfd/qcom,spmi-pmic.yaml          |   6 +-
 arch/arm64/boot/dts/qcom/agatti.dtsi          | 189 ++++++++++++++++++
 .../boot/dts/qcom/qrb2210-arduino-imola.dts   | 137 +++++++++++++
 arch/arm64/configs/defconfig                  |   2 +
 4 files changed, 333 insertions(+), 1 deletion(-)

-- 
2.47.3


