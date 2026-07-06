Return-Path: <devicetree+bounces-321185-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YGR+L8q7S2qIZQEAu9opvQ
	(envelope-from <devicetree+bounces-321185-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 16:29:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AC65711FA6
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 16:29:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=mJEEF2hq;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=h6w7B2yC;
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321185-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321185-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C392D357BABA
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 12:54:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9932C4D8DBC;
	Mon,  6 Jul 2026 12:46:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEBA54F7990
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 12:45:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783341975; cv=none; b=M4QtighZEQLA0SkhbU3LKVrRbyCerNl3XrXUYn+NxjzO96SLAHQI4TEDnF9/toLn4/NYZyzYZp6rbpaqqHbjnvH6DMi7ruGTQTRbG1lY9Fd/5z542NrxWioCgU/3FmlwbGvkNtHQ1qlf1w+J1pY9/PXWp5o2RwJrBXJP55Ur38o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783341975; c=relaxed/simple;
	bh=IqF/4dKgB1628r62VJTRc6pv/7HE6yY73nomq/D91IU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=O+DXRwZ80AOh0/0fsvMutmCqS1zb+mKfmLsdRfwfWhLcDheTphst/v18EIEkzeRrbMzwczgNatz6n9G7ysieOy2lAb4kBwf+QKTOYsnfbGq0DhMNx9/jFOmlzT/b0WqDPg90xLqkd/haMhF5cPZojomt5q9ocVTSKhGugcHVtkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mJEEF2hq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=h6w7B2yC; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 666AxFZf401636
	for <devicetree@vger.kernel.org>; Mon, 6 Jul 2026 12:45:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	j94N3D67YZmp+yB/bJ2N7wl2Db8ez4ZkEgubeH9mxnM=; b=mJEEF2hqlR/uOjVJ
	VGxfq6X8Coeflz9gG17PG5AS1d8bsHMFXhdZWsQVpoBGNxPvBhyMKeuA+dyOCDVQ
	f1hfsjqCoXOdNFPJoAu72h5EhTA2RJe8aHAuVR3do6hcY/6XuWdPi5v4ABh+SBK/
	rcNeX0qyntCP4cdXULNVaYmo+GOzB4IXw/vS1gy2FdSZK/epGthEs0eICwD0JDHC
	qLwA7MiAX+whloAu+BOq3pVZA9mRrwwWNHrvcFQktC3WPAB1dKapRcEh1XLp4aGO
	t0DPDKiFYVlnUQvHVG/TurGAk+efJV3NTROGxUtnqQUlu+PHgMshaUYjPMuJ3IBZ
	RMPGMA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f8a3grm6b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Jul 2026 12:45:51 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-92e663c29f2so310163585a.0
        for <devicetree@vger.kernel.org>; Mon, 06 Jul 2026 05:45:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783341951; x=1783946751; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j94N3D67YZmp+yB/bJ2N7wl2Db8ez4ZkEgubeH9mxnM=;
        b=h6w7B2yC64hERrSEv3KVmydDBLqbCSiU+R84v4YgZKY6Zn8jToGkof3At0DxnImDAS
         jLayZ53LM6dhN0T4pBFGl8O4aurS3grzb5UbBsi3oKuHYWr9kKwQk9/87dD7rROdzwWm
         a3oC8cZh2JYIe7K7Iq/aOK9BE8lcG0wMVr4OtN2+mLWwiQd/kQIQ4jwPV3fAwHkOk90t
         YRxaeo1Ejx4NgrX2Q49OUU5Kl7t5+467cpuv3OBclUWOm4O9lGhmSrNwdqO+uT6wGPhx
         xRribaQi1/QN+HejfnbbPG45WUs8jFO1g6RdEVLTfUV1B2K9C4Sp+Rw2ViRiVuWJIGqO
         +qyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783341951; x=1783946751;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=j94N3D67YZmp+yB/bJ2N7wl2Db8ez4ZkEgubeH9mxnM=;
        b=I0mYuqTL5Hf8PYtr17CdE4YEjRP+fxZK//ALCoHXYo9FEiaz1pVFqPb56/RXOcNwGs
         5YdEzWB8Xg8H1CpazNGnlB3k4e1TaSGS8brbgjygXAQaOYT81MT36QNlZ7oeBt2RAYRy
         aBerJlMjyOozwdG5ay2V9ZmflEG3/A5RHy8g3DmpY+dnzfRJVsMNqlCqwy8NMoVwupIw
         d5/bqjexujETqs745UoW7YtKgg3ZqTjjhdLBXLqb3hYXQeEsdW8S28Ku2zKOBd97KiVS
         r0M2WUDZXp5QQm6xxX2hf23bN5djpM099PPffe5aVAYok91UrfGwT6MtO/pgIMKEaAI2
         OzMQ==
X-Forwarded-Encrypted: i=1; AHgh+RpCsKqz8fBhs04IdS4zJWRYr+MSw7fBsXNawW03ILIt3mEA1eIFbFL8Tjs2SmRtjpAGntZpm0ec8DR1@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8bYur/4uYPe8JnLisk1ZdWuA4kZgWBUfIegSa0ujz+m0yOUS3
	lvhNNBuCP1pOBblyabeGIElYIKtkWgPnxD0Vexc6/KHx8Gb+GLdPFDAPuW/EngRFeCeFuLUwCuv
	syWUMYHxHnnS6PAQSGdOMGMHmRphaj8GCxvaflgxbIUlbXyUGa4QVauagP1dBZFDN
X-Gm-Gg: AfdE7clxGYQqRW+R+w9TE+eVJYLfK9PAmPml9WFW9FPj3Q/1nz3n+TlcLbmYIFmJoBn
	Smvqc+ufd2mUpxHLSh6QW5OMXm1/pwLq3p1VrfoHwqKz6GxHDID3yNT5wI/uBRcyOpcKPSafElM
	quAs6XH9ZQmqyS+aQeGbjBE4GTsP9wYzE1HgpOAoSBwlccgj5UMTLYOPp0EfpP4MqBnvUHSkh5m
	CP5CQrIVPZ2KtOCeHFEtQWEhOQbiOLqjfK9siXOi1px1FnNRkeirfmBCfWnT0BP7DKqWuFAqznd
	clYmlmAjkGpJVz7MSj9amiRKF8DnMavznWIy6rqqLq0eiQSfEoNJUTIVUMKXn8jUNB21m/81Tec
	EVMbtu3q3tcYarECgWPpQKib26uBS1h5uguMWjwKP
X-Received: by 2002:a05:620a:459f:b0:92e:5b63:224e with SMTP id af79cd13be357-92e8b5049abmr1749180785a.22.1783341951044;
        Mon, 06 Jul 2026 05:45:51 -0700 (PDT)
X-Received: by 2002:a05:620a:459f:b0:92e:5b63:224e with SMTP id af79cd13be357-92e8b5049abmr1749171985a.22.1783341950261;
        Mon, 06 Jul 2026 05:45:50 -0700 (PDT)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:86f0:c42b:ef4c:d3bb])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47aa0a55be4sm22126539f8f.31.2026.07.06.05.45.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2026 05:45:49 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Mon, 06 Jul 2026 14:44:32 +0200
Subject: [PATCH v3 20/20] driver core: platform: count references to all
 kinds of firmware nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260706-pdev-fwnode-ref-v3-20-1ff028e33779@oss.qualcomm.com>
References: <20260706-pdev-fwnode-ref-v3-0-1ff028e33779@oss.qualcomm.com>
In-Reply-To: <20260706-pdev-fwnode-ref-v3-0-1ff028e33779@oss.qualcomm.com>
To: Lee Jones <lee@kernel.org>,
        Mark Brown <broonie@opensource.wolfsonmicro.com>,
        Thierry Reding <thierry.reding@avionic-design.de>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Vinod Koul <vkoul@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>,
        Danilo Krummrich <dakr@kernel.org>, Rob Herring <robh@kernel.org>,
        Saravana Kannan <saravanak@kernel.org>,
        Madhavan Srinivasan <maddy@linux.ibm.com>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Nicholas Piggin <npiggin@gmail.com>,
        "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>,
        Andi Shyti <andi.shyti@kernel.org>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>, Doug Berger <opendmb@gmail.com>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
        Ulf Hansson <ulfh@kernel.org>, Frank Li <Frank.Li@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Matthew Brost <matthew.brost@intel.com>,
        =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
        Rodrigo Vivi <rodrigo.vivi@intel.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Peter Chen <peter.chen@kernel.org>,
        Paul Cercueil <paul@crapouillou.net>, Bin Liu <b-liu@ti.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Maximilian Luz <luzmaximilian@gmail.com>,
        Hans de Goede <hansg@kernel.org>,
        =?utf-8?q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>
Cc: brgl@kernel.org, linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org,
        driver-core@lists.linux.dev, devicetree@vger.kernel.org,
        linuxppc-dev@lists.ozlabs.org, linux-i2c@vger.kernel.org,
        iommu@lists.linux.dev, linux-pm@vger.kernel.org, imx@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org, intel-xe@lists.freedesktop.org,
        dri-devel@lists.freedesktop.org, linux-usb@vger.kernel.org,
        linux-mips@vger.kernel.org, platform-driver-x86@vger.kernel.org,
        mfd@lists.linux.dev,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2537;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=IqF/4dKgB1628r62VJTRc6pv/7HE6yY73nomq/D91IU=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBqS6M9ruJ8yyUk+I6pdpFWbcAtYm5CgsYvefKU+
 TywqoMuS8KJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCakujPQAKCRAFnS7L/zaE
 w0+BD/9zjT3fKJr7/zYP0sHpUApNtRCsyLsJzRKuAlcO+cogBO21GRQk1DGikSTFqOqALVvaQ2g
 83j83HjHg+bMyaUlGN/FEHSMVHmKvXmesanFWRUyj5q/cQcFMH8POK0Xe3edFHZZx4BBkdJLCiU
 YBgV2p9qKU7Yx9ujTc0nbFflTLCPc+KLCa6XMeNIL7NcRgHVvMgBJocHY4ppEVSl3w0N1MqzNLN
 MJ2jEc+08OGTNE6VqBsWKGpcVcsy0c/flgXequGSLwF2lbMvrEVBeckaXblcohUFBgsZTwHIilr
 DuAyyAxwT3CWTsisqCJ/uzziDpBphBHYSMVHgzJR0EvF/dg0gFk2JrYTFDjipwiMhwshuY4pMG6
 brBELDRVNzWmoJxvrqtCNEs2g6/282jmP5bq8VSGXsiFh0Tlh1WMQesFTI3Dru/rc0SNeU4rkul
 wq2awNwyKdDtNJtZDmRz22Vrcbh76dcF1Halbc2omaKC8QdnXDZFTtncn03dXnNqBcF2/RucoRD
 PgoRvdtJOI/EakLR/ayb7hAHHB2aey6mLr7a280QfJRvxTxQ9lcDY4ZxG2oeQyo5EJpmBhQCPl8
 BmnHyLd2X+djvXjF8tGCWMjxCty1aDjcqXp8ApTdwR04CWKI/ZYVFf+bcapravEbsUypfWAAx2W
 0i3DMYG/6NOmHjA==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-GUID: CzawSuEnR9istWWdukQDHWAeXKr0lvsF
X-Proofpoint-ORIG-GUID: CzawSuEnR9istWWdukQDHWAeXKr0lvsF
X-Authority-Analysis: v=2.4 cv=CPYamxrD c=1 sm=1 tr=0 ts=6a4ba37f cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=QyXUC8HyAAAA:8
 a=EUspDBNiAAAA:8 a=2sGp0kyKjRk1obZUzdUA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA2MDEyOSBTYWx0ZWRfX/XSoEtG/M3IX
 655O0XNsrk1jOA+95o0Lnlp88ExXhOgKHwXPhwujKJQrR5uNJxndpgb1fQ8IGKYTbCy6Px8xw67
 RoivOaGRF8LjEB96CutvpFFBqGQlOUvIilg0WJ7zjgMQlbTmGEDrkhEuKhDQ+8/ocp3QweHSNI4
 zz0CJOYtDHayDVXagXrILIDX2WXTlRWw+CQ9ti846hLpwInwmYPYvK+YsDheGtvfdyhzQsI6R44
 vUsKHwsXNIKF87lMf7zhEscBa+KLmeHSRe8o0eu8ObhH1EyXcIz1TiDBkfthekC/jDmBUvUxfso
 6clPEiTVxf8xmRuyQcz9XHqkIZ4O/kenFY4PPqg1+w+rF3HLpmypN09WmMWwoSXHY488T5RJq0L
 GwQlAIXvaOGMCEgyCl8Vl0bGIdvFY4xG8GdIcXbTzF/0Csj0FuNWneW5VDAA4AT0Xegl71KKm7y
 hhb3FtaPeCzUhFqld9A==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA2MDEyOSBTYWx0ZWRfX7SI3ZX/ieC1E
 TKD+C5LRyeKb0DB3y3VcXHBj9V61BYC7PF7TU0Y2bl/O8Alsm1wWfkPYxK1N0u4eiZjYWE8XY6n
 1IWfvKiB7Aizl2wLdpuyrSWgmapbkc8=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-06_01,2026-07-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 malwarescore=0 phishscore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607060129
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-321185-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:lee@kernel.org,m:broonie@opensource.wolfsonmicro.com,m:thierry.reding@avionic-design.de,m:sebastian.hesselbarth@gmail.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:srini@kernel.org,m:gregkh@linuxfoundation.org,m:vkoul@kernel.org,m:rafael@kernel.org,m:dakr@kernel.org,m:robh@kernel.org,m:saravanak@kernel.org,m:maddy@linux.ibm.com,m:mpe@ellerman.id.au,m:npiggin@gmail.com,m:chleroy@kernel.org,m:andi.shyti@kernel.org,m:andriy.shevchenko@linux.intel.com,m:joro@8bytes.org,m:will@kernel.org,m:robin.murphy@arm.com,m:opendmb@gmail.com,m:florian.fainelli@broadcom.com,m:bcm-kernel-feedback-list@broadcom.com,m:ulfh@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:matthew.brost@intel.com,m:thomas.hellstrom@linux.intel.com,m:rodrigo.vivi@intel.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:peter.chen@kernel.org,m:paul@crapouillou.net,m:b-liu@ti.com,m:p.zabel
 @pengutronix.de,m:luzmaximilian@gmail.com,m:hansg@kernel.org,m:ilpo.jarvinen@linux.intel.com,m:krzk@kernel.org,m:benh@kernel.crashing.org,m:brgl@kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-sound@vger.kernel.org,m:driver-core@lists.linux.dev,m:devicetree@vger.kernel.org,m:linuxppc-dev@lists.ozlabs.org,m:linux-i2c@vger.kernel.org,m:iommu@lists.linux.dev,m:linux-pm@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:intel-xe@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-usb@vger.kernel.org,m:linux-mips@vger.kernel.org,m:platform-driver-x86@vger.kernel.org,m:mfd@lists.linux.dev,m:bartosz.golaszewski@oss.qualcomm.com,m:sebastianhesselbarth@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,opensource.wolfsonmicro.com,avionic-design.de,gmail.com,lunn.ch,davemloft.net,google.com,redhat.com,linuxfoundation.org,linux.ibm.com,ellerman.id.au,linux.intel.com,8bytes.org,arm.com,broadcom.com,nxp.com,pengutronix.de,intel.com,ffwll.ch,crapouillou.net,ti.com,kernel.crashing.org];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[bartosz.golaszewski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,intel.com:email,qualcomm.com:email,qualcomm.com:dkim,vger.kernel.org:from_smtp];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bartosz.golaszewski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_GT_50(0.00)[67];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1AC65711FA6

When using platform_device_register_full(), we currently only increase
the reference count of the OF node associated with a platform device. We
symmetrically decrease it in platform_device_release(). With all users in
tree now converted to using provided platform device helpers for
assigning OF and firmware nodes, we can now switch to counting references
of all kinds of firmware nodes.

Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 drivers/base/platform.c | 15 +++++----------
 1 file changed, 5 insertions(+), 10 deletions(-)

diff --git a/drivers/base/platform.c b/drivers/base/platform.c
index 9357942d0c79b032645035879b2bed3d53305b9f..a71015f1d915340aa01ebfae67196d4d7ccecba8 100644
--- a/drivers/base/platform.c
+++ b/drivers/base/platform.c
@@ -599,7 +599,7 @@ static void platform_device_release(struct device *dev)
 	struct platform_object *pa = container_of(dev, struct platform_object,
 						  pdev.dev);
 
-	of_node_put(pa->pdev.dev.of_node);
+	fwnode_handle_put(pa->pdev.dev.fwnode);
 	kfree(pa->pdev.dev.platform_data);
 	kfree(pa->pdev.mfd_cell);
 	kfree(pa->pdev.resource);
@@ -712,9 +712,7 @@ EXPORT_SYMBOL_GPL(platform_device_add_data);
 void platform_device_set_of_node(struct platform_device *pdev,
 				 struct device_node *np)
 {
-	of_node_put(pdev->dev.of_node);
-	pdev->dev.of_node = of_node_get(np);
-	pdev->dev.fwnode = of_fwnode_handle(np);
+	platform_device_set_fwnode(pdev, of_fwnode_handle(np));
 }
 EXPORT_SYMBOL_GPL(platform_device_set_of_node);
 
@@ -730,10 +728,8 @@ EXPORT_SYMBOL_GPL(platform_device_set_of_node);
 void platform_device_set_fwnode(struct platform_device *pdev,
 				struct fwnode_handle *fwnode)
 {
-	if (is_of_node(fwnode))
-		platform_device_set_of_node(pdev, to_of_node(fwnode));
-	else
-		pdev->dev.fwnode = fwnode;
+	fwnode_handle_put(pdev->dev.fwnode);
+	device_set_node(&pdev->dev, fwnode_handle_get(fwnode));
 }
 EXPORT_SYMBOL_GPL(platform_device_set_fwnode);
 
@@ -928,8 +924,7 @@ struct platform_device *platform_device_register_full(const struct platform_devi
 		return ERR_PTR(-ENOMEM);
 
 	pdev->dev.parent = pdevinfo->parent;
-	pdev->dev.fwnode = pdevinfo->fwnode;
-	pdev->dev.of_node = of_node_get(to_of_node(pdev->dev.fwnode));
+	device_set_node(&pdev->dev, fwnode_handle_get(pdevinfo->fwnode));
 	dev_assign_of_node_reused(&pdev->dev, pdevinfo->of_node_reused);
 
 	if (pdevinfo->dma_mask) {

-- 
2.47.3


