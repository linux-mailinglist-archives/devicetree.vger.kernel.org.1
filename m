Return-Path: <devicetree+bounces-277844-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IFOPKi8UvGnbrwIAu9opvQ
	(envelope-from <devicetree+bounces-277844-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 16:20:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 26AD42CD983
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 16:20:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DC7C73096E87
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 15:15:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F0532773E4;
	Thu, 19 Mar 2026 15:15:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cgkQUim+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Aqq+Qnkz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1700B3E3D86
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 15:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773933326; cv=none; b=UFJVxmeF2CG1wIG2LDbw1luS6Z4yIkRWNaWbaFmQiXSzI85ykvKtqT4rTd52JmekjyLf3lu1YT++fIhfWe0UORQvIedJLjYXLnByWYeAZIFntZimL6i1WUh5VHMyKqEWRAUleNqI96hdLJuM8egEKjeOzRYMGOjK/p99CZnTPw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773933326; c=relaxed/simple;
	bh=E54fml070Cz4VKY0KRII/7hxq5QIX89WoUmF9qwmZ4E=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=YAjY3hDwzXZIdHGBFqUZRM/Mx8bHAlDrvQWPppxi4aYTKX1LnY6PRp/NDEmWPBJFBYMBSNWE0St92kACaSZmFyoQCOE/fC6bWkiMLsMU2InjJvMG70iZ8TQEJlNTRkORYDkh7FEx6E19EPGf78wPxMpWvY73FpXhQTXOU+8wkp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cgkQUim+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Aqq+Qnkz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62J742F71770897
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 15:15:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=O72dGMOI83ML+7uwOGETZz
	5LhNOuUNA+mEYdc/tJPuM=; b=cgkQUim+bNMmZ7rSbw2zPIbpXqgdA4CpBQIXxS
	PtbkhP3Ad1oVqcNo0VcOxms0X1buvbL3WASigEaKudD7SmoeBfaFJmcXLUd4/Utb
	aIScPxRzPBk9nXm4mVBTBpC+E8qaBNuuls97G2hijCqz/k6L2XKQKo1rJjag1pfb
	/jLaJQ/WrzRrW4llsNGhAoA1LK6LZVp/Oe3xe5UTFzeYHb2bA2JL9oUbyiyDIqTf
	LxeUeJVJKiQ1A5j/m3I07om56nsEynNED37EktpjBJhsf28SCdWDQXAbayxDp/3a
	kbqfkosQhoRagT4ZJXgO8yh2jUj2f+Q+HFsu+MqtWVOrB5GQ==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyy75uxhn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 15:15:22 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-5fde4d924f2so1297174137.1
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 08:15:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773933321; x=1774538121; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=O72dGMOI83ML+7uwOGETZz5LhNOuUNA+mEYdc/tJPuM=;
        b=Aqq+QnkzvWje29iqjUXaBtR+1VT+y4HsNv7WMuSvIfjcJRnJU1q9hgyXQqWzgIhlNt
         zE+mjpJ5hVtmeSpI/WgZLFarVepnbEuuPhlf5VOlFwV4oN6v0UQLhaFiqW2AAk6NSddx
         jn+/0or2dBVS8PepwVVb00NniN61lfWQO6qqn3zS9EfBuybZW++4RCYCdhNcxvnuPoix
         CWIo484Uprj1WDvSVHgn0zc0BgIsuqAMm98yuq80amArwWyKjLetuZdI7th9CdNuVXc6
         uh71ua2iIRN3ntC8uK0UAOfpyBoOD1bKdpzvmdS5HMl5yvjVC0JzS1Q4iPfBL90tnk2W
         4Uzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773933321; x=1774538121;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O72dGMOI83ML+7uwOGETZz5LhNOuUNA+mEYdc/tJPuM=;
        b=TaTvxuNqC5TVclUIUos+y9Ebb/pV9+VdMFZnAidF5bv5gcx5HXCLPBqfzSIExZy2HV
         SMRbsnETvd4q+m9yIRSW88XVbizwS02GEHNXzIw23smj+02UYaMd6v+h3/ljqWpv1WUk
         J6RLuOoOw9/Q95zeKx6WAlTh3rnYVyGj/AzEFjti+v1gGDSBui9l4K9nXI9Zb/f/hP2a
         D8aNFct0Q3NQ1N25o0zUCdJriATKhtLSDVB7H0Ak/lvqvCYibOqtUX09pBVO+ArTQQVu
         MOl9ACNQX1OOhHkv6LIeQ4DxcgqzTzSkMFWvc7WygEbBy4NQjL6Pr7QjhKD7T2r4Qnmo
         c7VA==
X-Forwarded-Encrypted: i=1; AJvYcCWwjj37zfrpPQMK8GiiBzRSJZf9H3KpSfjkN4NdzjJCh142tn2qPdL9qFwd5O4tJ0TvlLDjOpSFREK0@vger.kernel.org
X-Gm-Message-State: AOJu0YzQTW+z+B21/qi8wW2EyPBFKDpvINf3bYM3cHgJsWdKmMc0jg3N
	lyeTbEWLRnJXMbZ6XSBl0cLX7MKnl06S8SHTtbqb3hJof8/qHhSLv8GalNmqlCRtoiw1nJxRunk
	XfyViFdtEXMeS7ZSfj9d3aJI9xHXk3VPt+Xi99nAHYMFxVo7g8jIAaV4yHAktSHoO
X-Gm-Gg: ATEYQzx1DBzbGwq3rA8aqQuxMwLIVQ0ILphCo0+3vpXr8OxuMZ9ZNGAmXFhGucRrkji
	2m6GqT+NYoqh2AsywNTOWOwId+YNyqjPrNYf/rWFwF1TdvHUn36q3GIArpsUTXN+BeRxq0B4qKT
	GPC5Vho7yEgQHKlegC/VSwGCxW+LW05vYcXSYmSUINnPY8tIfJTFTLwtO6Vrdta6hq72+zV3b87
	FpUwwiX8gk7Rl+ARTdhwNXaFoq04qgzJa7rBzOTUgIZyZWqEN0qeaAW+mgA+FUh5e0rkyrtfnYT
	awsotpis/pv2WhvIEv27FJMGnpNXnH2DeLFh/tWzTlpmH3dTlxUcxSZJrkFzjXy6NQfDpVCcOX5
	4tzBx9cd9Tg9+yjdd5iTWydzxhFw=
X-Received: by 2002:a05:6102:38cb:b0:5fd:ee19:8b30 with SMTP id ada2fe7eead31-6027d42e75bmr3344846137.35.1773933320797;
        Thu, 19 Mar 2026 08:15:20 -0700 (PDT)
X-Received: by 2002:a05:6102:38cb:b0:5fd:ee19:8b30 with SMTP id ada2fe7eead31-6027d42e75bmr3344825137.35.1773933320174;
        Thu, 19 Mar 2026 08:15:20 -0700 (PDT)
Received: from hackbox.lan ([82.79.95.133])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f4e48ad5sm196652865e9.1.2026.03.19.08.15.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 08:15:19 -0700 (PDT)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: [PATCH v6 0/2] arm64: dts: qcom: glymur: Enable SoC-wise display
 and eDP panel on CRD
Date: Thu, 19 Mar 2026 17:15:13 +0200
Message-Id: <20260319-dts-qcom-glymur-crd-add-edp-v6-0-f582e87ec874@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAETvGkC/4XSwY7CIBAG4FdpOC8GSou2J99js4cCg7LR0gJtN
 MZ338HuRg+rXgiTTL+fdOZCIgQHkbTFhQSYXXS+x0J+FETvu34H1BmsSclKyThrqEmRjtof6e5
 wPk6B6mBoZwwFM1AmLMM7NOuaERSGANadbvrn11LHSX2DTpnMHXsXkw/nW/zMc19OqllT1i+TZ
 k4ZxU4hDAjNodweXN8Fv/JhR3LUXP5h+GwuXmMlYhvs7KysQSu19TGuxqk74AfHFR4LKe6kYG9
 IgWRluLVacdNY+YSsHsnXP3eukLRQgRCdNlY9I+sHkr8hayRrq6s1k1xKpv8hr8vcAowTLkdah
 nnfjbZ4uhk5ZYqKxmkYfEhU8rWSpjFMlLqdZR6/6iLQnOVSW/RwSvT33RsMvv4AXfwmiJ0CAAA
 =
X-Change-ID: 20260109-dts-qcom-glymur-crd-add-edp-03f0adde9750
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>
X-Mailer: b4 0.15-dev-7ae85
X-Developer-Signature: v=1; a=openpgp-sha256; l=2691;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=E54fml070Cz4VKY0KRII/7hxq5QIX89WoUmF9qwmZ4E=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpvBMDxLsZVKr7eD1NtTJuVOX1DFMU1ZWhMIhJ+
 aCnw4mIlQGJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCabwTAwAKCRAbX0TJAJUV
 VszEEACa2v8rUQ/OZhboZ5Ifb8OMPcC/RUcO6m7itNrJiLVrMBhxQCga4kb0W7n+Es/jxnYj//u
 MTK/wvYqFU7lkv/A6O3v4JVs3b66YN1LYajYg/a8JHAq27RnzC+Y500sgtgNsThxlffS4n3UkbM
 BOzZKhn9T8ejoZmqbK5ioNm5oYQKLP80LoZm1Wc6E57oDNnocDqjeBP5mGRM0Z3A00EOjN9eRN6
 nghpt79DaxdZaIfEH28wNcHKaek0AaCbQvwqJCQ8BeQR6efp+3nKB28Je0dIwTxm/FLpsTZHMgT
 2vlJvIH7K6IH7gGzyKOvjrHBrVf4Nmo5FDW2TmO8tTqp1bIisACfKC9usDR/tHuX86vDCwAHKnC
 lNxpXFlXECl/KC1bpAEfUXbE1hx7U61lao0K9XaXsWwKQTt7EsmChXQ06GKnyyUnT6sHuHFsnPs
 Vrp6a4VzypisJt+MIgy2o46KGt5LvffML2XUf0NswUzlaoN2+7p7rA1Jaehqdpv7Tl4hVML+FGO
 bs8DHq+QMCOeCwSlpiHXKxMi4RUrl/9u3V9W+KVkG+h9o6+FIeGV2nv01Aitvc6HpTPOII0opH/
 jeACS5mXlAW9Hlyd4MGAqcWxrwL/0oJeINVnPHyWTZZquwtfr89RIlNhfXbPWIPFtEK8QRi/wL8
 LTz43bKPVJMIC9w==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE5MDEyMSBTYWx0ZWRfXw0OVD38GvEtb
 jAAgxTidje5YoEtD2qaOowGpuSGCGIVTRdPUn9e2DlBB7INC0fyaXcPT23oDYsKkih9twerw0p4
 018O+OjS3573Nnq9t9Jpxd7feEnW8AIhlnEbfFavaW8zNfz890Hl0RmTKf5rHvSC/9uU7YhD7rf
 eKA+KZOdy52kCIkHbtVAXAHudBxBzjSODgYTeoKz2s7ebMVPaXLSytJVpTSjdODK10fyBuz1uDt
 YTK4txJpkXCempF6jTyWKbBthHqctRvkVIFpe6hBszKjjckZMS04S3QkZvDhhVDfXwYgSorqeqU
 gi4ZjRy1Y8ipjwl0CiQEISbVcdDQIlO/NBIMtjIPnwr3m0nCCbvyV2wFGVpQNwf41lV45PDXnGz
 Z/ttW4cX3/pwmNbaeLrcrhsdmiXs4qUcji8qz6stb7ydl9f5NpQxLPw5qcvEnQHagSShTnyCdp/
 SP2Co0Y/5F6CMUih7/g==
X-Proofpoint-ORIG-GUID: n94d_1GfXXqZffRo_ZBZrsfDPj7wAKce
X-Authority-Analysis: v=2.4 cv=A7hh/qWG c=1 sm=1 tr=0 ts=69bc130a cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=iKs3dpp2RB4k51ZqCjcyjQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=zzY5ckjghQJwFlXv4FcA:9
 a=QEXdDO2ut3YA:10 a=ODZdjJIeia2B_SHc_B0f:22 a=FO4_E8m0qiDe52t0p3_H:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: n94d_1GfXXqZffRo_ZBZrsfDPj7wAKce
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-19_01,2026-03-19_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 bulkscore=0
 suspectscore=0 impostorscore=0 spamscore=0 phishscore=0 adultscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603190121
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-277844-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email,msgid.link:url];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 26AD42CD983
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Start by describing the MDSS (Mobile Display SubSystem), the MDP
(Mobile Display Processor) and the 4 DisplayPort controllers it brings,
then describe the PHY used for eDP and tie up the PHY provided clocks
to the Display clock controller.

Do all this in order to enable the eDP panel the CRD comes with.

Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
Changes in v6:
- Actually dropped the phy patch dependency. It is a functional one,
  but not a merging one.
- Link to v5: https://patch.msgid.link/20260319-dts-qcom-glymur-crd-add-edp-v5-0-5fc47061660c@oss.qualcomm.com

Changes in v5:
- Rebased on next-20260318.
- Dropped all dependencies, except the USB DT patchset.
- Reworded the commmit messages to be more cleaner.
- Link to v4: https://patch.msgid.link/20260309-dts-qcom-glymur-crd-add-edp-v4-0-fe4e33acdfb6@oss.qualcomm.com

Changes in v4:
- Dropped the RFT as now this is tested by me.
- Dropped the 192 MHz OPP from the mdss_dp0_opp_table entirely,
  as suggested by Dmitry in a discussion off-list.
- Picked up Konrad's R-b tags.
- Link to v3: https://patch.msgid.link/20260303-dts-qcom-glymur-crd-add-edp-v3-0-4d1ffcb1d9f6@oss.qualcomm.com

Changes in v3:
- Fixed opp table according to Konrad's suggestion.
- Added missing reg regions for all DP controllers, as Konrad suggested.
- Fixed all sizes of the reg ranges.
- Replaced all 0s with 0x0 in all reg ranges.
- Added missing clock name entry reported by Dmitry. 
- Link to v2: https://patch.msgid.link/20260113-dts-qcom-glymur-crd-add-edp-v2-0-8026af65ecbb@oss.qualcomm.com

Changes in v2:
- Add missing PIXEL1 clock to DPs [0-2]
- Use the same opp table for all DPs and drop the dedicated ones.
- Drop the extra compatible from DP1.
- Changed compatible for the panel to samsung,atna60cl08, as that is the
  actual model.
- Link to v1: https://patch.msgid.link/20250925-dts-qcom-glymur-crd-add-edp-v1-0-20233de3c1e2@linaro.org

---
Abel Vesa (2):
      arm64: dts: qcom: glymur: Describe display-related nodes
      arm64: dts: qcom: glymur-crd: Enable eDP display support

 arch/arm64/boot/dts/qcom/glymur-crd.dts |  71 +++++
 arch/arm64/boot/dts/qcom/glymur.dtsi    | 466 +++++++++++++++++++++++++++++++-
 2 files changed, 529 insertions(+), 8 deletions(-)
---
base-commit: 54526d6c29ce58d5399cd4e2237d631266ebaaef
change-id: 20260109-dts-qcom-glymur-crd-add-edp-03f0adde9750
prerequisite-change-id: 20260109-dts-qcom-glymur-add-usb-support-617b6d9d032c:v6
prerequisite-patch-id: 7ec5f802a334d96421d8f95d4d9e9773655cc947
prerequisite-patch-id: 8d9e016b49979fa817cf9eab70b809fdb9d4656f

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


