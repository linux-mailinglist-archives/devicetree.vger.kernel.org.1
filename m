Return-Path: <devicetree+bounces-256294-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 6768FD389BC
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 00:21:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 999B230194B0
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 23:21:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A373324B20;
	Fri, 16 Jan 2026 23:21:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jjrCbHT9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WHQfUpUW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FDEC30DED8
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 23:21:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768605679; cv=none; b=lTtkNT1G/qvB5bpDmt+sNIqrRZbI2ht8jYUMB94BJZfr0kHYF61kIKa6I2MTWZM6bty+teXq3qz1aE4Ya95SkLam5ks6LP3rRdoJZ+Oy2vLO7pb7QnCjdbLoObsbeQfN0S6ZJdpU7WDJaIFm+SAz2oWGWXsl3hkqtIt4K290jRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768605679; c=relaxed/simple;
	bh=9B1FnLaHALjYfJ8RPCg5eOxKik1XLzUO5cKu4vZ+ZZw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=C6YY1R4b42E+CNA2QTpK+s8Apd+pV7jI+rzcnCei2UHq0t+9L1x1He+iot2tMaEjsJKYttu+mZhiVyOe2oGrnG7SNgkPLOKtaFjhOTcaVR4ekzijZYDMD9Ows+3PZzVgfNb8yEWcj6mFok4HM9hH00VjLn/VDXJUEqoMJsyZlvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jjrCbHT9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WHQfUpUW; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60GNEB38167405
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 23:21:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=1qylKAN4jaI
	gqx7JT64dI6YQstiaPDg+rYzw4T90x1I=; b=jjrCbHT9ad7FMPlIIlaPJ/C0/BM
	1AFKriWmjUFqj8IAXFfDlJ10BpXqzgzVn0RruFWXNtwlku1CyvhMuJgzRVC6/271
	plk4aJE1pOO06jIEmInlKZ682VWu01dZHtAwVkJsMsoROXeGHCkcyKr578YLeBnE
	6dtBUgnMapH/gKopOTdhTC+TiuXX3W2/7FRDL0HQ7+LSok8ugNIkmZwfoaXY63RO
	JBzwGBiSIJCmo1LSq8jUQ2dJq9MuOifcp+PS4jNqZ8phB1xXvLAiAAFNZqoNEvRP
	e16YNkzyBjzKWQp2UTNW69iSURciaBEunHkFxNoKQNAQn2gSuC8cr4nmsSQ==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bqved0b5s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 23:21:12 +0000 (GMT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-12338749ea9so3315138c88.0
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 15:21:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768605672; x=1769210472; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1qylKAN4jaIgqx7JT64dI6YQstiaPDg+rYzw4T90x1I=;
        b=WHQfUpUWxIdb22saXBmXZw4MzbPDOsuxZzHtvpievIPTwcCyqgXxgE/Xxi0qsD2piJ
         //Sf3UsK6OIxoFG8pjbcc/AS5ZB3asWQhTG9RZQrB8i/BjEstIuzDB1WMbe1ZGl4Lb+Z
         kTsVVUVBLvIogvlhLCi/N1yx+jlSkIQ2m7T177BIHe+SPm3XcQT9DrU2cYmS9YSZrMdd
         Iwa8jciQOtWyECwbUvH7dmyFCokyz0JfjEeeMgJ62pFO3XeU2fgD/Tc0mLla3VbvOq4t
         rNppMopCIrzjfFl2hH+hs/GDySiq7MmVb03gCpZGu3Z+qs5uTirhgQGXLNkf4HIo65Zm
         0r9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768605672; x=1769210472;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1qylKAN4jaIgqx7JT64dI6YQstiaPDg+rYzw4T90x1I=;
        b=iR7bwtd7jIlf/nSGWRQ6qVQcNwJYgCWBCRZ/nZJYjB8fWt/Wnq507FcI9+vReHN35p
         Mf6Q4ZdSYQ0pgHjkpOHBO43v6ThUMs5rxjnsfJpnfE1pIbrSwo/JHO0UkNqA/pvfv066
         uJtaofecH4B6c9UFzAWGVU9rvu9RA9v/bfSA5e71KFj4e0OryzZC0R6ZBOf7kg0B2mRE
         72G7JrF2bb5skicm/G2+lDlg/wV6N83Y8nBvlfknd2G3upkm2PtMHVyhLghLq/f389Yp
         cmNU8x+OJaTql7xC7DLof2/CcwJGCYPGtmGnUAW91js3GIE3K/Z/RG/e2HH+jPwrhxfP
         PPMQ==
X-Forwarded-Encrypted: i=1; AJvYcCUMZO/+wvB8zJKpv7fokRtgBH+MZrYldUrJ5tFPqQDtR1ygwjDK2t0JEJwDkLdGMHDIEmBty1PgBELY@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1Yw1XW4iwo7A+ko/1mOwvY++Tds4ov9x1RwwOB4ytUTPJu+S6
	/csW2ThekJohoTpLIpOoYOiCb0TwxzUfe1RTdt3r/qn1NC1qgqjHNhDHUvBwICrTDMoapzVcyJN
	NGHsvy1gx2ITQKKgHOLeAb4KlWY2dywtA7adJz8EjeVJIu3rR2bbY3pixdvut+Luf
X-Gm-Gg: AY/fxX4ipodyYy200JFustGQ/zLu9ImQKZUjslMDQp61wpq8zzt569YnPu7LEREIVvj
	u33S3EHlRhBLq+DAtfj79948XmdtSsTywKkb2kcgCd/ieyrtgod6uXEJGowZ6gE7c6NFYrJolpj
	Bw5LmPESNEzbHMTjzVPK1wSS6gcFz5n2xxPM0fvP45aQLEqUlL8jaO+g8S+g9nV3Gh2uqh9JvkV
	nQhaHJCjIMUHUXUEx1EGmDkhR+QKstHvQmvm4WKIJeZoKhL/ppfJHJKWBpDH+mp6Hl0aol5upU8
	WbRcvwfs/6uw4Dfi6zZ9vEmPsEkeajq63HxKj1Xi5WI0mnWMSnuP697MlLK3tXR/66qBBhETUU6
	rHZk6+F5XNDhPLsdtKqMpssqoYPjgD3UdxL0NPVMT99GOHzg+UFQrhVkeZhrxGqM=
X-Received: by 2002:a05:7022:6081:b0:11b:c1fb:89a with SMTP id a92af1059eb24-1244b35f486mr3286741c88.32.1768605671989;
        Fri, 16 Jan 2026 15:21:11 -0800 (PST)
X-Received: by 2002:a05:7022:6081:b0:11b:c1fb:89a with SMTP id a92af1059eb24-1244b35f486mr3286723c88.32.1768605671499;
        Fri, 16 Jan 2026 15:21:11 -0800 (PST)
Received: from hu-eserrao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1244af10e21sm4611267c88.16.2026.01.16.15.21.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 15:21:11 -0800 (PST)
From: Elson Serrao <elson.serrao@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Souradeep Chowdhury <quic_schowdhu@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 5/9] usb: misc: qcom_eud: improve enable_store API
Date: Fri, 16 Jan 2026 15:21:02 -0800
Message-Id: <20260116232106.2234978-6-elson.serrao@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260116232106.2234978-1-elson.serrao@oss.qualcomm.com>
References: <20260116232106.2234978-1-elson.serrao@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 3MbSS2rUGQINai8Cm0jdKXpt2iGI5Lz9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDE3NSBTYWx0ZWRfX7+9TgFNS3zy3
 bjdh7ET2tKgugM+NLs19kyKacJQmTs+iXsH8MvF8htr3mbAnxeS4iKLYPAjOHKtkdMJ1th43jon
 om+P6NiHUKXcNABNYiEXe6I3L+AucbINz4eDF44Y5DBbUcRjE++iRlQLx3/rX3+TlPtECJ+XIWE
 qszTuh3+gYH0lUSgu7z1qw4zqqIWBhH5m+yrI4VH22BQh+xBSEiqdxA5Rxs8uoZblFwa0vsHno1
 niqrQJhduq1T/mheqNIn/kjbxhmJQCd2woqDpTAQU4qj8X2Ky+S8E3Zd0ze6/yMFWI7qCCTL++G
 C4Ucn3Ldz8v87HOsw8dNhuHAGwSWyyJ4+6nWNhE1fCQludnghtzGut9G9VyB4xx/AsPunfPa6K3
 x/rR2BsEeiPend9AvIDsCvnyCEjJPIUTH/LeSDCnQPctUZmaLGCNgHsIMq36Fbl9Wqz+P20cSVh
 lmDZ1VY+Udg9ZzaYiFw==
X-Proofpoint-ORIG-GUID: 3MbSS2rUGQINai8Cm0jdKXpt2iGI5Lz9
X-Authority-Analysis: v=2.4 cv=aMv9aL9m c=1 sm=1 tr=0 ts=696ac7e8 cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=iEam2xx7WbKG8qDqzoQA:9 a=Fk4IpSoW4aLDllm1B1p-:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_08,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 malwarescore=0 spamscore=0 phishscore=0 suspectscore=0 adultscore=0
 clxscore=1011 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601160175

Currently enable_store() allows operations irrespective of the EUD state,
which can result in redundant operations. Avoid this by adding duplicate
state checks to skip requests when EUD is already in the desired state.
Additionally, improve error handling with explicit logging to provide
better feedback.

Signed-off-by: Elson Serrao <elson.serrao@oss.qualcomm.com>
---
 drivers/usb/misc/qcom_eud.c | 21 +++++++++++++++------
 1 file changed, 15 insertions(+), 6 deletions(-)

diff --git a/drivers/usb/misc/qcom_eud.c b/drivers/usb/misc/qcom_eud.c
index a58022f50484..0ea6491f963c 100644
--- a/drivers/usb/misc/qcom_eud.c
+++ b/drivers/usb/misc/qcom_eud.c
@@ -168,18 +168,27 @@ static ssize_t enable_store(struct device *dev,
 	if (kstrtobool(buf, &enable))
 		return -EINVAL;
 
+	/* Skip operation if already in desired state */
+	if (chip->enabled == enable)
+		return count;
+
 	if (enable) {
 		ret = enable_eud(chip);
-		if (!ret)
-			chip->enabled = enable;
-		else
-			disable_eud(chip);
-
+		if (ret) {
+			dev_err(chip->dev, "failed to enable eud\n");
+			return ret;
+		}
 	} else {
 		ret = disable_eud(chip);
+		if (ret) {
+			dev_err(chip->dev, "failed to disable eud\n");
+			return ret;
+		}
 	}
 
-	return ret < 0 ? ret : count;
+	chip->enabled = enable;
+
+	return count;
 }
 
 static DEVICE_ATTR_RW(enable);
-- 
2.34.1


