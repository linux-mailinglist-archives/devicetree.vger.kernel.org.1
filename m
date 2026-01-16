Return-Path: <devicetree+bounces-256296-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 138B4D389D5
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 00:24:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8E8953119993
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 23:21:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0199F32C31A;
	Fri, 16 Jan 2026 23:21:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RXB8wg6M";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dfc+R59n"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B74A831ED72
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 23:21:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768605680; cv=none; b=CCS1skTT5L1Ab6ZAr1UN4XN1zwzWJlA3QftS4DxaS2h3iaWyRvifAIqIP1BPJKYwdRiKw9lOcbyHf3sodlOFbtDQCmQK/Esx0CCQVnHrLwMiBwBThnuIjesKnRlAWZW+Ir0mU6IRizzCsUnwaU2sy2Qi+tr3rkZpob++4aJM3/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768605680; c=relaxed/simple;
	bh=r1bqX+YKzW7Wo7iz/2rkXvfUlo4SFKFYbrl1Eh5BoSQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=KYeSWJpN0h37JMsGI5k9kOgRdjVMdR2OpnOLD8d1g7pNzPbrR8I9UNPdNTThZxqKnshbyBrCnz/WlhYcRDFlRGRqYHKGL3fmmZqCOF/WhT0L7ORSozzNW4iNO3t/j4v2WZglZtPW+Js90+CaE2zhnwTOom+ZlHLfI0mO754AHlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RXB8wg6M; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dfc+R59n; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60GNDbi9166382
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 23:21:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=nLNoInJmlgi
	CyTSp0s0aDwUKBeAC7fdewIAWrT/v+x8=; b=RXB8wg6M1UqjDyu5uY1Jpz9/GxI
	hrey0kk7FfZZrAqcc77EesVLivRtsdSP3Y+UH+uTOgb6ue5tUVpjBw8rePqNQAQh
	BGjqRQM2KKMaq4Lo/Bf2Q+Za/H6C9ziZKuwkFWVJBkVLDI7eI6JiDBGrXmOLiiVp
	QEG2CAZi/NrilZPFmEFeSvcXrvLlBR93Ns1HbpnrUDCh6d38bTSPVd3YDPcXfSwY
	4ES7HOOPeO3mqyjvHz+28QS1/4Vg7I9tN1UA1LbOZAPPi3pcyC8jfvKXLMxxGCDf
	F7Y+9Khm/2uN/va2qcr/4v4qkKt1wgDa+LXBpdID/0sQfxC4g0fmfdEc31g==
Received: from mail-dl1-f69.google.com (mail-dl1-f69.google.com [74.125.82.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bqved0b5v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 23:21:13 +0000 (GMT)
Received: by mail-dl1-f69.google.com with SMTP id a92af1059eb24-1219f27037fso1493746c88.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 15:21:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768605673; x=1769210473; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nLNoInJmlgiCyTSp0s0aDwUKBeAC7fdewIAWrT/v+x8=;
        b=dfc+R59nKfMeRZv+Jf0hT6tKkSc0cdbC+4zH7dCtSy214k69AM/wczyXzwz6FicgDS
         iDH90QRNWH1uCg/fzGKnjqBDSg9I0gLVe6bOyfWjBPbQ7gatLxLNBOtr6rDZBjnYZmRg
         uzMYMrSosBXDj4oZkgBe4euoxCRV0cjPwY6yQxr0Do4gjHIMU9d56y04D7qg2PtWnlNW
         awyJwFjVJM+MIYCWyHqtF1R4y6AoAh9YYArGkLPsynxoaLL/YkDwLJEBIURQ6JIMbdE6
         ju4+/ZR4ZQTQcYEGx+PjTclgQYjSpgp0PKsbdkedPqbFIlV2anF3TLqGoeKoawvnWfb2
         N9vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768605673; x=1769210473;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nLNoInJmlgiCyTSp0s0aDwUKBeAC7fdewIAWrT/v+x8=;
        b=H+1dHmpomC9biNPjAIQjSnDAQmElUGqn6a/k3uYAcU6eVG7SgeRYqK8wnDvCPid9x7
         9RtctX6I4cQeaoyiUt+3GAPsjbsYnRK/pK5PFFQAcHEi6C2cnuOM6YWjvm5PF8XZGQ++
         gdwtHVHUNdH2p8YW3QWaxT9VG+S2+cTX6T73cNAZ584vQFdgaEeV8sgx1wfemByG18ir
         6LoC4h0iNXl+nkFCN3WMT/etuD1AM20OSrb0rOj6hmAU+7+m34k7xAej4pAVhyRIx/oA
         bK0p0CSRppJHDYE3AOVuae+sxXjH+Atnh2q5diQsbyEUIY1Sjb3Ln75SdNU0hMJ3YhOA
         5DvQ==
X-Forwarded-Encrypted: i=1; AJvYcCVDxWwxtpy66+nVLZzGNiBXiS6jHhlcAbUU87M9hAJY42yQ4b+91OUuuy/oLby5OCeuOWBFT777YLWx@vger.kernel.org
X-Gm-Message-State: AOJu0YyY5XWAW0cSQinjqYNwAig/ULLC8wF9a3OsyTu3OTwH3I3SxK46
	yVpF4gAspPq7QCMK0pyaOlEKxx7KU6lZbj7ihx6y6LWicDEfNL3PWYlvmm4M+S575a4eYbKRNtu
	MD0Jch48CWLeQF2xq4EbH8Q5MrFySb1TTl0pRj/X2Ld0kaSM3++Q9qzO+K5skm9RK
X-Gm-Gg: AY/fxX5lTVZE/ortO9ngDyPCY7D1/l+n1fuv/RUb9EAdJa7PqZUfs/bOk8wxMscBvrg
	y2IhfQpM37q8hPFvW3YykiGSijnDD3LawNkyQbUQNaNvkNafR/u9372DV4Z2+/g5AzgRdzu7SaY
	/cHvGIYkUo7lYsYp2iOPLfeeG+z0EHTLJq7DxWW7Neiye2SLw5XeSt6o6OoCbp3OVuwHHUJFiZJ
	ssiWLReTzx57Im7E9Z2t4HxH/ZyinciQ1mKMONDBQ5doWELAvRkC7hYkxDNgbls+9WUy81sWe1E
	70C9DDke4eIiaaGcsK5vjztGGFljCbz5AaJ+JeeZ0rBwAcYnHoIwknvkHra+tQmG5uWdhjvuKxb
	05NhEwEcX1a1+At2carV1VvmyP/aZ+JwGrCWlhuhShXnwuMNrtzw+1mxJnqrM05o=
X-Received: by 2002:a05:7022:660b:b0:123:3360:aa99 with SMTP id a92af1059eb24-1244a75ea1cmr4361078c88.47.1768605672810;
        Fri, 16 Jan 2026 15:21:12 -0800 (PST)
X-Received: by 2002:a05:7022:660b:b0:123:3360:aa99 with SMTP id a92af1059eb24-1244a75ea1cmr4361064c88.47.1768605672348;
        Fri, 16 Jan 2026 15:21:12 -0800 (PST)
Received: from hu-eserrao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1244af10e21sm4611267c88.16.2026.01.16.15.21.11
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
Subject: [PATCH 6/9] usb: misc: qcom_eud: add host mode coordination
Date: Fri, 16 Jan 2026 15:21:03 -0800
Message-Id: <20260116232106.2234978-7-elson.serrao@oss.qualcomm.com>
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
X-Proofpoint-GUID: kkBQYPQFF3hJlLQtnxgC67WXbCkX8t1q
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDE3NSBTYWx0ZWRfX4HuDf9L9TwUK
 dQZvOPF/LAMGCN4rGWGrgjtY0Wxb53oMUCXWF9MfaDTFRBYHO1dWABBFP6GnBaiecD6y9yGTQd1
 0qfGFTzdv/hCyOpt1/iaVlRilbB8rigKOUsf3IktIalr0MsXIS7C4Dv7Nv3Qou8Vio5y8sHlbSO
 gJA8l27L67MHkAfDK1THZ0Wmvey6jLp2U8jWyCR5pGtHHyBfZBLi51Z3rIpuDo7yTai7DLpoBq+
 5tJNRg3B8jZ2mY65UbrPfDr+doLEXaC+5OpwW2D1A+2d6R9NrWNph6h3vtaWlntko/Xcb2xCfVs
 fZPiMq/QqwcYNl8G7m+7c6mIRdIOOvxCQpf9xfXBSuYzd43yOBmOvNZfDUW6OhgF+SuNQj6K8xE
 mCRP2dztozuSS2x/d9VMZS9CxrKMXmvDlNKfpCoAbncKWB41mpkgoVqtQhwubCfnjce4kNIpQNN
 We7kFvUr/lUDIS8Vq5w==
X-Proofpoint-ORIG-GUID: kkBQYPQFF3hJlLQtnxgC67WXbCkX8t1q
X-Authority-Analysis: v=2.4 cv=aMv9aL9m c=1 sm=1 tr=0 ts=696ac7e9 cx=c_pps
 a=kVLUcbK0zfr7ocalXnG1qA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=0DRR6HtdnbDkULtDn-kA:9 a=vr4QvYf-bLy2KjpDp97w:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_08,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 malwarescore=0 spamscore=0 phishscore=0 suspectscore=0 adultscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601160175

EUD functions by presenting itself as a USB device to the host PC for
debugging, making it incompatible in USB host mode configurations.
Enabling EUD, when in host mode can also cause the USB controller to
misbehave as the EUD hub can only have one upstream facing port.

Handle below two scenarios to prevent these conflicts:
1. Prevent user from enabling EUD via sysfs when the USB port is
   in host mode.
2. Automatically disable EUD when USB port switches to host mode
   and re-enable it when exiting host mode.

This ensures consistent state management without creating conflicts
between the EUD debug hub and the USB controller.

Signed-off-by: Elson Serrao <elson.serrao@oss.qualcomm.com>
---
 drivers/usb/misc/qcom_eud.c | 79 ++++++++++++++++++++++++++++++++++++-
 1 file changed, 78 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/misc/qcom_eud.c b/drivers/usb/misc/qcom_eud.c
index 0ea6491f963c..3f1cc7ea2a6a 100644
--- a/drivers/usb/misc/qcom_eud.c
+++ b/drivers/usb/misc/qcom_eud.c
@@ -49,12 +49,15 @@ struct eud_chip {
 	struct device			*dev;
 	void __iomem			*base;
 	struct eud_path			*paths[EUD_MAX_PORTS];
+	/* serializes EUD control operations */
+	struct mutex			state_lock;
 	phys_addr_t			mode_mgr;
 	unsigned int			int_status;
 	int				irq;
 	bool				enabled;
 	bool				usb_attached;
 	bool				phy_enabled;
+	bool				eud_disabled_for_host;
 	u8				port_idx;
 };
 
@@ -162,32 +165,66 @@ static ssize_t enable_store(struct device *dev,
 		const char *buf, size_t count)
 {
 	struct eud_chip *chip = dev_get_drvdata(dev);
+	struct eud_path *path;
 	bool enable;
 	int ret;
 
 	if (kstrtobool(buf, &enable))
 		return -EINVAL;
 
+	mutex_lock(&chip->state_lock);
+
 	/* Skip operation if already in desired state */
-	if (chip->enabled == enable)
+	if (chip->enabled == enable) {
+		mutex_unlock(&chip->state_lock);
 		return count;
+	}
+
+	/*
+	 * Handle double-disable scenario: User is disabling EUD that was already
+	 * disabled due to host mode. Since the hardware is already disabled, we
+	 * only need to clear the host-disabled flag to prevent unwanted re-enabling
+	 * when exiting host mode. This respects the user's explicit disable request.
+	 */
+	if (!enable && chip->eud_disabled_for_host) {
+		chip->eud_disabled_for_host = false;
+		chip->enabled = false;
+		mutex_unlock(&chip->state_lock);
+		return count;
+	}
 
 	if (enable) {
+		/*
+		 * EUD functions by presenting itself as a USB device to the host PC for
+		 * debugging, making it incompatible in USB host mode configuration.
+		 * Prevent enabling EUD in this configuration to avoid hardware conflicts.
+		 */
+		path = chip->paths[chip->port_idx];
+		if (path && path->curr_role == USB_ROLE_HOST) {
+			dev_err(chip->dev, "EUD not usable in host mode configuration\n");
+			mutex_unlock(&chip->state_lock);
+			return -EBUSY;
+		}
+
 		ret = enable_eud(chip);
 		if (ret) {
 			dev_err(chip->dev, "failed to enable eud\n");
+			mutex_unlock(&chip->state_lock);
 			return ret;
 		}
 	} else {
 		ret = disable_eud(chip);
 		if (ret) {
 			dev_err(chip->dev, "failed to disable eud\n");
+			mutex_unlock(&chip->state_lock);
 			return ret;
 		}
 	}
 
 	chip->enabled = enable;
 
+	mutex_unlock(&chip->state_lock);
+
 	return count;
 }
 
@@ -324,18 +361,56 @@ static irqreturn_t handle_eud_irq_thread(int irq, void *data)
 static int eud_role_switch_set(struct usb_role_switch *sw, enum usb_role role)
 {
 	struct eud_path *path = usb_role_switch_get_drvdata(sw);
+	struct eud_chip *chip = path->chip;
 	int ret;
 
+	mutex_lock(&chip->state_lock);
+
+	/*
+	 * EUD must be disabled when USB operates in host mode. EUD functions by
+	 * presenting itself as a USB device to the host PC for debugging, making
+	 * it incompatible in host mode configuration.
+	 *
+	 * chip->enabled preserves user's sysfs configuration and is not modified
+	 * during host mode transitions to maintain user intent.
+	 */
+
+	/* Only act if EUD is enabled and this is the active path */
+	if (chip->enabled && path->num == chip->port_idx) {
+		if (role == USB_ROLE_HOST && !chip->eud_disabled_for_host) {
+			ret = disable_eud(chip);
+			if (ret) {
+				dev_err(chip->dev, "Failed to disable EUD for host mode: %d\n",
+					ret);
+				mutex_unlock(&chip->state_lock);
+				return ret;
+			}
+			chip->eud_disabled_for_host = true;
+		} else if (role != USB_ROLE_HOST && chip->eud_disabled_for_host) {
+			ret = enable_eud(chip);
+			if (ret) {
+				dev_err(chip->dev, "Failed to re-enable EUD after host mode: %d\n",
+					ret);
+				mutex_unlock(&chip->state_lock);
+				return ret;
+			}
+			chip->eud_disabled_for_host = false;
+		}
+	}
+
 	/* Forward the role request to the USB controller */
 	ret = usb_role_switch_set_role(path->controller_sw, role);
 	if (ret) {
 		dev_err(path->chip->dev, "Failed to set role %s for port %u: %d\n",
 			usb_role_string(role), path->num, ret);
+		mutex_unlock(&chip->state_lock);
 		return ret;
 	}
 
 	path->curr_role = role;
 
+	mutex_unlock(&chip->state_lock);
+
 	return 0;
 }
 
@@ -433,6 +508,8 @@ static int eud_probe(struct platform_device *pdev)
 
 	chip->dev = &pdev->dev;
 
+	mutex_init(&chip->state_lock);
+
 	ret = devm_add_action_or_reset(chip->dev, eud_role_switch_release, chip);
 	if (ret)
 		return ret;
-- 
2.34.1


