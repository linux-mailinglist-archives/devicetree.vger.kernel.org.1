Return-Path: <devicetree+bounces-266286-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CDGFCtrblGmkIQIAu9opvQ
	(envelope-from <devicetree+bounces-266286-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 22:21:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id AAABE150B1D
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 22:21:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CC8E230525C0
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 21:21:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9417E2F4A1E;
	Tue, 17 Feb 2026 21:21:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cxPM4/E9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CxmRHf22"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 077452F1FE7
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 21:21:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771363273; cv=none; b=PENCC3NlXvz/UVNMxl2tQqxkd8e7Ha/7MafWNlP8WuSVb2kq4bolTHBlvZX8zaE/Jk+ADc4bYsBg0EsQT2JyMygNFjMEWRHPY3timdEThsopfCWHD9JLGtAYgmhyAAno5CGZi5UlAhQzMKtfw6VjpQNNO9HTnEDS9llRMDuqaI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771363273; c=relaxed/simple;
	bh=YOLRN55LxJK2qJI6ai1FCwOa5fYTPUTC4n5AkFI9pTg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Md2yn73aMlphUXEDraZiCv7BpBRkPGrYRI1smMdzkYhQ6i78kw6zJn9g+7US3ChEgzQ5CnSS6EInb8pcHZpsDdRthrJukFkeO9XPwoDISBFEXvNXXouk7HP2dU57jsBYFHpX/Uf314OnSuyLtnKgerycYlikLuoCBFoJatH+eEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cxPM4/E9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CxmRHf22; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61HEAhat2111517
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 21:21:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tCcmspN6ucVvatxroXWVxT8mrA0MUfhfmZj+e7BSMUo=; b=cxPM4/E9QcuszQiO
	nQqG9bnR1VMU5Xu9rcmdXCQjYzU3lP5C9C1FNUjbIUPhJPLrQpcfHVDFz+fyIkIh
	wsGMVGgmRm3OET1ufPzQw28fVyv4FX49vvJ5EJtrE8eahjL34Wl4CLXUZHbl0iRg
	qc87cWieHJby3aOQ9ZWBaTB3+s9gMyLWoHomRT9PwXa4l8aw9xT3BN66D9qPeDe1
	cOXzPI0PMAgH9By7peL6Vql5T+oyxdpaJhlN1ktHOlyppE47xC2utA/l+18uOPL3
	qm+2tJN+KyJpm96ZF1dXJk9DGuMlcrLVQRFkkAIsHhEzaNBRCXpP+2t2Ecm26AA0
	/dp30Q==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cchv4jr90-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 21:21:11 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb4d191ef1so454913985a.0
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 13:21:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771363270; x=1771968070; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tCcmspN6ucVvatxroXWVxT8mrA0MUfhfmZj+e7BSMUo=;
        b=CxmRHf22h9/WjhJS27+mp2WiQyqhNBKTZdjzZP/Did8S7L8OPh19qxev9KYubnKhsS
         zRbLYQR6tmIwOw3u2n3YGiQgv7b+xSdpkbQaQUWu6dNYTgGQik5NInkZpn4mY/hV3UYV
         AUSpy7LIMc2PmeNIUwYnqfGByRkTv1aCtujrC2TBsXJjwoqlUanDOZd8TiOfEzxkdsjb
         /Ktc+8sfYvwjCslfpfUM4OSP/dNBdxzorj/bXrREkXrrwa0bWA5ggOa/QoIDyk8c7MAx
         +eEkiVOvgsc8A4dKhtgm42NG4EUYtJm5LxM0oeFGYq0dw0u76c2lumSZayuSZU0nv89W
         R6Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771363270; x=1771968070;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tCcmspN6ucVvatxroXWVxT8mrA0MUfhfmZj+e7BSMUo=;
        b=hcOi3AnQqnojSfeHRtW3LqHwpHr/NLFP5rNi57itZSfuALfO5dt+JLvErjOwJjkrxN
         e0JottDO2AtNGYocx0jJDm53QrEFeelWmudCdIram086Vv6odlWPOqeRWb2kjwq/xX0E
         Wbbat+0sisxAT9FOvw8bU57huyGpp6yqEBV1B0DAetPmEcvqKZHyRELIOIrvnA4kOgOz
         7btcicKQy5D2WJljEVbmbT5yr1PA6h+W7A9FkJ3FTeaH4XaP8xdCNyLY4+G4HzFxJEP7
         +63WkaFWI4261nWkqEG4XyuKQNIfjSTjUU/ALpnn9vC6jHuzTJeIuwxZ3sXnNyVV6U7L
         fczA==
X-Forwarded-Encrypted: i=1; AJvYcCUiPJxhViqpJCMENQlOOAApsMYml1eoWPaKikgihyW/vKhtGRLCC75jDhI5JeDmHjd7HcGTXlj6YAxe@vger.kernel.org
X-Gm-Message-State: AOJu0YxqAnEa9fI/cKNZwpv4gZaB6t6Tvku/bIHlvuVcZ3k/juO2ZbjF
	kHcFBGTElL5/JzDG/NMi+nH/JD1xVbr/MNMDsfZFc10CvAciCPI5Otr6k4tYlyD6wk0FUdyex4H
	co9jafupoQUjCbftbHha5Xf+WAsN6yMU3BVTS8HjsDmbtteq4nb33KiaRRLldA7ch
X-Gm-Gg: AZuq6aJFvYPvOWCk1tUT7uuQpYolujCqCaaE70UIlICKM1nHDnzdqK3YNxcnlCTC2JY
	kO/K+y7gf5ORD9x1USK6pbzA/LHxp72KablhFT2RzOXW89+Lo8Gj9b5mYzxipHro8j0ToSO+upc
	tBqOYfE2MSIDXV4ahKs3D7XKEj8tkky6AXOzWGiFipafcX7dWN07LrPy9YYjoBBulGySDYsyH91
	F/uZnSO58+NsBvPLlXuQdLIR1nvpzRT9WBxM1UbvorLm1n8i11j6OZ+pVmW48v53+fxzSQNokcP
	PTEo9WxWcKQ1Hlzqi03ULYmtLHzgi2bDsjb/sd1c+LkxeTRXeVkP8oGTuDRwBq/VMhQram4HTow
	e6K7z0ZHIqNZOnH9uCmhzYHqyRdtND0gDUoqtDh+JXPSfH02MIE8TsKf+5gCfVOQDWyOERgWsxF
	V32JkxmgLw6Ls3JzMHww3jrCi2DvbDjKh71ps=
X-Received: by 2002:a05:620a:691a:b0:8c6:ee09:5eae with SMTP id af79cd13be357-8cb421628bbmr1869015785a.0.1771363265306;
        Tue, 17 Feb 2026 13:21:05 -0800 (PST)
X-Received: by 2002:a05:620a:691a:b0:8c6:ee09:5eae with SMTP id af79cd13be357-8cb421628bbmr1869012085a.0.1771363264739;
        Tue, 17 Feb 2026 13:21:04 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-387068923c3sm39293311fa.5.2026.02.17.13.21.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 13:21:02 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 17 Feb 2026 23:20:42 +0200
Subject: [PATCH 1/4] clk: qcom: dispcc-sdm845: set GENPD_FLAG_NO_STAY_ON
 flag for MDSS domain
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260217-sdm845-hdk-v1-1-866f1965fef7@oss.qualcomm.com>
References: <20260217-sdm845-hdk-v1-0-866f1965fef7@oss.qualcomm.com>
In-Reply-To: <20260217-sdm845-hdk-v1-0-866f1965fef7@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        stable@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=10235;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=YOLRN55LxJK2qJI6ai1FCwOa5fYTPUTC4n5AkFI9pTg=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBplNu6sIUGHxd7FAfse0gREPm1810dj9fAeh9Xr
 Djpk617AoCJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaZTbugAKCRCLPIo+Aiko
 1b7wCACBy9OfMluQ6pbvu9r5ivdRF87DvWoApBg3b6Dj1fNxXEVCSzttrlaJ+wx5eWe3PhczTnn
 wCKZtQ2xEhu7uUQUnIwJkIeG0WRkVF8LRPbXA9TVSn4OPf8bcPTBe0uv9MdlNhcpjlXOJ57qzdD
 MrzJ7ST4zFHtTfP2zDpsye5sjlBhono7d5NnJrnaKoMVyIvjaShIFWZVITHjFXcphnf2IYpxevd
 fSLDxf3YWQdDlbE2GcB0TDgNbSqn7vkR688Zd+A3s+7drdOtZGux11CSMsvsZHKhZTMj5ahecem
 6q1BBEQgZfM4ZCIZKWunWNwKXszSuQDmOWAxfRPnTSC93qwo
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=eYAwvrEH c=1 sm=1 tr=0 ts=6994dbc7 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=VwQbUJbxAAAA:8
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=dYJyxWB7gKoe5oMdJBEA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDE3NSBTYWx0ZWRfX9bNvZz+rdsq4
 b9DQXCggak52LlUjsyVNR0KNbSx50SkEa3yOyR2HZN+D/ZX4GwSGEdSpdFVE5nWZdlgnyigpwCB
 syIEOHaS6KjFjwOZl7k5MQZDelecZMuaj7DOAyrC328mtz09i/7R/JOO7c4iR6tFxS3Kv1e1Fls
 43NYAT3pfPe3ERNFntA8XF+m375Hkjdi7dVTVcM77OKKrwyhgdXp51mANRoK3wL8gyTKshBukx3
 rHgItjeTohCV7xxbQTYBtncgqi7r90qy4PMZXKN6TMBdt4WReTIW+m5WMrZVdENyjabbmNlIEKC
 Itgt6iH6CAf7Txm//LiX3UaQuNiSVFMs292rlL5RxIkeoOzZKWiC64c5eC5xH9L4XTNKvzwGaoU
 4uJlli2RdnoUyZ4sK4wPpqmdQZ3Ca+39yZhgz38rxo1cTxpfDzEm5KpY92cVmkkU4wRGZwdY+fI
 /QVyYnKj4DA1Lqw55sA==
X-Proofpoint-GUID: z9HECAxUuO50MP8Jxbl8AgPBgWMPWZUP
X-Proofpoint-ORIG-GUID: z9HECAxUuO50MP8Jxbl8AgPBgWMPWZUP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_03,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 suspectscore=0 priorityscore=1501 malwarescore=0
 phishscore=0 impostorscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170175
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266286-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,linaro.org:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: AAABE150B1D
X-Rspamd-Action: no action

Since the commit 13a4b7fb6260 ("pmdomain: core: Leave powered-on genpds
on until late_initcall_sync") setting of the display clocks is partially
broken. For example, when on SDM845-HDK the bootloader leaves display
enabled, later the kernel can't set up DSI clocks, ending up with the
broken display, blinking blue.

 ------------[ cut here ]------------
 disp_cc_mdss_pclk0_clk_src: rcg didn't update its configuration.
 WARNING: CPU: 7 PID: 81 at drivers/clk/qcom/clk-rcg2.c:136 update_config+0xd4/0xf0
 Modules linked in:
 CPU: 7 UID: 0 PID: 81 Comm: kworker/u32:3 Not tainted 6.16.0-rc2-00040-ga3f36de2f3ba #4236 PREEMPT
 Hardware name: Qualcomm Technologies, Inc. SDM845 HDK (DT)
 Workqueue: events_unbound deferred_probe_work_func
 pstate: 60400005 (nZCv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
 pc : update_config+0xd4/0xf0
 lr : update_config+0xd4/0xf0
 sp : ffff800080992a30
 x29: ffff800080992a40 x28: 0000000000000001 x27: ffff00008db49080
 x26: ffff00008db49220 x25: 0000000000000000 x24: 0000000008d9ee20
 x23: ffffd6f1bf1f6cd8 x22: 0000000008d9ee20 x21: ffffd6f1becadfa8
 x20: ffffd6f1bf1f6cc0 x19: 0000000000000000 x18: fffffffffffef3f0
 x17: 0000000000000004 x16: 0000000000000024 x15: 0000000000000005
 x14: fffffffffffcf3ef x13: 2e6e6f6974617275 x12: 6769666e6f632073
 x11: 7469206574616470 x10: 752074276e646964 x9 : 72756769666e6f63
 x8 : ffff800080992790 x7 : ffff8000809928c0 x6 : ffff800080992850
 x5 : ffff8000809927d0 x4 : ffff800080994000 x3 : 0000000000000000
 x2 : 0000000000000000 x1 : 0000000000000000 x0 : ffff0000808d1b00
 Call trace:
  update_config+0xd4/0xf0 (P)
  clk_rcg2_configure+0xb8/0xc0
  clk_pixel_set_rate+0x138/0x180
  clk_change_rate+0x124/0x620
  clk_change_rate+0x1b4/0x620
  clk_change_rate+0x1b4/0x620
  clk_change_rate+0x1b4/0x620
  clk_change_rate+0x1b4/0x620
  clk_change_rate+0x1b4/0x620
  clk_change_rate+0x1b4/0x620
  clk_core_set_rate_nolock+0x230/0x2b0
  clk_set_rate+0x38/0x90
  _opp_config_clk_single+0x30/0x98
  _set_opp+0x11c/0x530
  dev_pm_opp_set_rate+0x18c/0x280
  dsi_link_clk_set_rate_6g+0x44/0x100
  msm_dsi_host_power_on+0xc4/0x988
  dsi_mgr_bridge_pre_enable+0x194/0x3e0
  drm_atomic_bridge_call_pre_enable+0x40/0x58
  drm_atomic_bridge_chain_pre_enable+0x50/0x130
  drm_atomic_helper_commit_modeset_enables+0x15c/0x26c
  msm_atomic_commit_tail+0x214/0xb18
  commit_tail+0xa0/0x1a0
  drm_atomic_helper_commit+0x1a8/0x1d0
  drm_atomic_commit+0x8c/0xcc
  drm_client_modeset_commit_atomic+0x258/0x2d0
  drm_client_modeset_commit_locked+0x60/0x1b8
  drm_client_modeset_commit+0x2c/0x58
  __drm_fb_helper_restore_fbdev_mode_unlocked+0xbc/0xe8
  drm_fb_helper_set_par+0x30/0x58
  fbcon_init+0x3cc/0x530
  visual_init+0x8c/0xe0
  do_bind_con_driver.isra.0+0x18c/0x320
  do_take_over_console+0x13c/0x1d4
  do_fbcon_takeover+0x6c/0xe0
  fbcon_fb_registered+0x1dc/0x1e0
  do_register_framebuffer+0x1bc/0x278
  register_framebuffer+0x30/0x5c
  __drm_fb_helper_initial_config_and_unlock+0x2dc/0x5a8
  drm_fb_helper_initial_config+0x48/0x58
  drm_fbdev_client_hotplug+0x7c/0xe0
  drm_client_register+0x5c/0xa0
  drm_fbdev_client_setup+0xa4/0x1c0
  drm_client_setup+0x58/0xa0
  msm_drm_bind+0x3b4/0x460
  try_to_bring_up_aggregate_device+0x16c/0x1e0
  __component_add+0xa8/0x170
  component_add+0x14/0x20
  dsi_dev_attach+0x20/0x38
  dsi_host_attach+0x58/0x98
  devm_mipi_dsi_attach+0x34/0x90
  lt9611_attach_dsi+0x98/0x120
  lt9611_probe+0x3f8/0x4a0
  i2c_device_probe+0x154/0x340
  really_probe+0xbc/0x2c0
  __driver_probe_device+0x78/0x120
  driver_probe_device+0x3c/0x160
  __device_attach_driver+0xb8/0x140
  bus_for_each_drv+0x88/0xe8
  __device_attach+0xa0/0x198
  device_initial_probe+0x14/0x20
  bus_probe_device+0xb4/0xc0
  deferred_probe_work_func+0x90/0xcc
  process_one_work+0x214/0x64c
  worker_thread+0x1c0/0x364
  kthread+0x14c/0x220
  ret_from_fork+0x10/0x20
 irq event stamp: 110949
 hardirqs last  enabled at (110949): [<ffffd6f1be502d78>] _raw_spin_unlock_irqrestore+0x6c/0x74
 hardirqs last disabled at (110948): [<ffffd6f1be502268>] _raw_spin_lock_irqsave+0x84/0x88
 softirqs last  enabled at (109450): [<ffffd6f1be1b9ff0>] release_sock+0x90/0xa4
 softirqs last disabled at (109448): [<ffffd6f1be1b9f88>] release_sock+0x28/0xa4
 ---[ end trace 0000000000000000 ]---
 ------------[ cut here ]------------
 disp_cc_mdss_pclk1_clk_src: rcg didn't update its configuration.
 WARNING: CPU: 7 PID: 81 at drivers/clk/qcom/clk-rcg2.c:136 update_config+0xd4/0xf0
 Modules linked in:
 CPU: 7 UID: 0 PID: 81 Comm: kworker/u32:3 Tainted: G        W           6.16.0-rc2-00040-ga3f36de2f3ba #4236 PREEMPT
 Tainted: [W]=WARN
 Hardware name: Qualcomm Technologies, Inc. SDM845 HDK (DT)
 Workqueue: events_unbound deferred_probe_work_func
 pstate: 60400005 (nZCv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
 pc : update_config+0xd4/0xf0
 lr : update_config+0xd4/0xf0
 sp : ffff800080992a30
 x29: ffff800080992a40 x28: 0000000000000001 x27: ffff00008db49080
 x26: ffff00008db49220 x25: 0000000000000000 x24: 0000000008d9ee20
 x23: ffffd6f1bf1f6c48 x22: 0000000008d9ee20 x21: ffffd6f1becb1b50
 x20: ffffd6f1bf1f6c30 x19: 0000000000000000 x18: ffffffffffff0790
 x17: 0000000000000004 x16: 0000000000000024 x15: 0000000000000005
 x14: fffffffffffd078f x13: 2e6e6f6974617275 x12: 6769666e6f632073
 x11: 7469206574616470 x10: 752074276e646964 x9 : 72756769666e6f63
 x8 : ffff800080992790 x7 : ffff8000809928c0 x6 : ffff800080992850
 x5 : ffff8000809927d0 x4 : ffff800080994000 x3 : 0000000000000000
 x2 : 0000000000000000 x1 : 0000000000000000 x0 : ffff0000808d1b00
 Call trace:
  update_config+0xd4/0xf0 (P)
  clk_rcg2_configure+0xb8/0xc0
  clk_pixel_set_rate+0x138/0x180
  clk_change_rate+0x124/0x620
  clk_change_rate+0x1b4/0x620
  clk_change_rate+0x1b4/0x620
  clk_change_rate+0x1b4/0x620
  clk_change_rate+0x1b4/0x620
  clk_change_rate+0x1b4/0x620
  clk_change_rate+0x1b4/0x620
  clk_core_set_rate_nolock+0x230/0x2b0
  clk_set_rate+0x38/0x90
  _opp_config_clk_single+0x30/0x98
  _set_opp+0x11c/0x530
  dev_pm_opp_set_rate+0x18c/0x280
  dsi_link_clk_set_rate_6g+0x44/0x100
  msm_dsi_host_power_on+0xc4/0x988
  dsi_mgr_bridge_pre_enable+0x194/0x3e0
  drm_atomic_bridge_call_pre_enable+0x40/0x58
  drm_atomic_bridge_chain_pre_enable+0x50/0x130
  drm_atomic_helper_commit_modeset_enables+0x15c/0x26c
  msm_atomic_commit_tail+0x214/0xb18
  commit_tail+0xa0/0x1a0
  drm_atomic_helper_commit+0x1a8/0x1d0
  drm_atomic_commit+0x8c/0xcc
  drm_client_modeset_commit_atomic+0x258/0x2d0
  drm_client_modeset_commit_locked+0x60/0x1b8
  drm_client_modeset_commit+0x2c/0x58
  __drm_fb_helper_restore_fbdev_mode_unlocked+0xbc/0xe8
  drm_fb_helper_set_par+0x30/0x58
  fbcon_init+0x3cc/0x530
  visual_init+0x8c/0xe0
  do_bind_con_driver.isra.0+0x18c/0x320
  do_take_over_console+0x13c/0x1d4
  do_fbcon_takeover+0x6c/0xe0
  fbcon_fb_registered+0x1dc/0x1e0
  do_register_framebuffer+0x1bc/0x278
  register_framebuffer+0x30/0x5c
  __drm_fb_helper_initial_config_and_unlock+0x2dc/0x5a8
  drm_fb_helper_initial_config+0x48/0x58
  drm_fbdev_client_hotplug+0x7c/0xe0
  drm_client_register+0x5c/0xa0
  drm_fbdev_client_setup+0xa4/0x1c0
  drm_client_setup+0x58/0xa0
  msm_drm_bind+0x3b4/0x460
  try_to_bring_up_aggregate_device+0x16c/0x1e0
  __component_add+0xa8/0x170
  component_add+0x14/0x20
  dsi_dev_attach+0x20/0x38
  dsi_host_attach+0x58/0x98
  devm_mipi_dsi_attach+0x34/0x90
  lt9611_attach_dsi+0x98/0x120
  lt9611_probe+0x3f8/0x4a0
  i2c_device_probe+0x154/0x340
  really_probe+0xbc/0x2c0
  __driver_probe_device+0x78/0x120
  driver_probe_device+0x3c/0x160
  __device_attach_driver+0xb8/0x140
  bus_for_each_drv+0x88/0xe8
  __device_attach+0xa0/0x198
  device_initial_probe+0x14/0x20
  bus_probe_device+0xb4/0xc0
  deferred_probe_work_func+0x90/0xcc
  process_one_work+0x214/0x64c
  worker_thread+0x1c0/0x364
  kthread+0x14c/0x220
  ret_from_fork+0x10/0x20
 irq event stamp: 110949
 hardirqs last  enabled at (110949): [<ffffd6f1be502d78>] _raw_spin_unlock_irqrestore+0x6c/0x74
 hardirqs last disabled at (110948): [<ffffd6f1be502268>] _raw_spin_lock_irqsave+0x84/0x88
 softirqs last  enabled at (109450): [<ffffd6f1be1b9ff0>] release_sock+0x90/0xa4
 softirqs last disabled at (109448): [<ffffd6f1be1b9f88>] release_sock+0x28/0xa4
 ---[ end trace 0000000000000000 ]---
 lt9611 3-003b: video check: hactive_a=0, hactive_b=0, vactive=0, v_total=0, h_total_sysclk=0
 [drm:dpu_encoder_phys_vid_wait_for_commit_done:540] [dpu error]vblank timeout: 2
 [drm:dpu_kms_wait_for_commit_done:524] [dpu error]wait for commit done returned -110
 fb0: sys_imageblit: framebuffer is not in virtual address space.
 [drm:dpu_encoder_phys_vid_wait_for_commit_done:540] [dpu error]vblank timeout: 2
 [drm:dpu_kms_wait_for_commit_done:524] [dpu error]wait for commit done returned -110
 [drm:dpu_encoder_phys_vid_wait_for_commit_done:540] [dpu error]vblank timeout: 2
 [drm:dpu_kms_wait_for_commit_done:524] [dpu error]wait for commit done returned -110
 Console: switching to colour frame buffer device 480x135
 [drm:dpu_encoder_phys_vid_wait_for_commit_done:540] [dpu error]vblank timeout: 2
 [drm:dpu_kms_wait_for_commit_done:524] [dpu error]wait for commit done returned -110
 [drm:dpu_encoder_phys_vid_wait_for_commit_done:540] [dpu error]vblank timeout: 2
 [drm:dpu_kms_wait_for_commit_done:524] [dpu error]wait for commit done returned -110

Fixes: 13a4b7fb6260 ("pmdomain: core: Leave powered-on genpds on until late_initcall_sync")
Cc: stable@vger.kernel.org
Cc: Ulf Hansson <ulf.hansson@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/clk/qcom/dispcc-sdm845.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/qcom/dispcc-sdm845.c b/drivers/clk/qcom/dispcc-sdm845.c
index 78e43f6d7502..468b30497746 100644
--- a/drivers/clk/qcom/dispcc-sdm845.c
+++ b/drivers/clk/qcom/dispcc-sdm845.c
@@ -763,6 +763,7 @@ static struct gdsc mdss_gdsc = {
 	.en_rest_wait_val = 0x5,
 	.pd = {
 		.name = "mdss_gdsc",
+		.flags = GENPD_FLAG_NO_STAY_ON,
 	},
 	.pwrsts = PWRSTS_OFF_ON,
 	.flags = HW_CTRL | POLL_CFG_GDSCR,

-- 
2.47.3


