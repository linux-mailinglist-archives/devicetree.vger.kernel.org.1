Return-Path: <devicetree+bounces-273435-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WN8fJnztr2nkdAIAu9opvQ
	(envelope-from <devicetree+bounces-273435-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:07:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EAA802491C2
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:07:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 394833190185
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:04:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39DCF450911;
	Tue, 10 Mar 2026 10:04:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hnEASL3n";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HJdoiV7G"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5E9D44D00E
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:04:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773137043; cv=none; b=Vap2gajBbEQoJoQzVfXkiy1u3W+dLaAjNnfFHdu7iiUiHtVYqhyuB6XiRogJY96mEGR4dQL9Eo3Z7cw8edSs2tauUUcYOoWiHdlk5qVTLI0orUFcap8VYUU2bUSXP0Qrj4+/qm9Nhq4zW91X+y6MoHAOgqFcriCvnwx3I5DIqx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773137043; c=relaxed/simple;
	bh=rzsNgR6Z6A/Aj1a072eRukiJnHk7bSbHljNSQavXzas=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=L04u5RtYu9orsRj+LwNS0Y6+YSxZabjEXWCC5t1ixa6xhKJ7vRfnsMZSdZlB9Sro9M+kh3V3KcMa2sLxFbAMSs6ZRGsi3qabpQy9hmkYy7MIiaddRa8CEsWb2DYlTJhVisCIxJPVuBGXz2TAez+01swaSFK/m1esgM2bqk7nJZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hnEASL3n; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HJdoiV7G; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62A96b4Y2460655
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:03:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cSyEvOaRy4tLHYAdmpC9LN2SAkF2AsDq+mYwWTIqqSo=; b=hnEASL3nrKGDU+mF
	lKKGhYaV3N+9pcz4LqZqUgeHDQPaSN6/O8XeEtKxng00ab/HufzIbvlxRpur1bmy
	ApzY+foD6GmDUSjpkCG/ZATJ0wJ29rVWQ/dZ+1bqGJHDmwvpj8Oj1AkcpngHqOcq
	EH+YcbbFbI15K7AgDxBDQqJoYwcGk/tDuUFDvGZaXR/+q+igKHONRyn0ggvn/we8
	eevKqfBHraN8eQnjXkK8VPFi1POwDpHfN0R9wELxMCSD4IYDHyrOuAU1z6tIMKol
	Phyt457FExiL8Qcym/zJasDOhAXBOOYpXVr3zRq0MeoGGRt1w9iE4nQvDvCa9Nze
	GhcHOw==
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com [209.85.210.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4csyv1bpyd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:03:59 +0000 (GMT)
Received: by mail-ot1-f70.google.com with SMTP id 46e09a7af769-7d74211ff80so9185036a34.3
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 03:03:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773137039; x=1773741839; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cSyEvOaRy4tLHYAdmpC9LN2SAkF2AsDq+mYwWTIqqSo=;
        b=HJdoiV7GyElXoall6giqbKxE51ZRRoJfspFrwX1wZjJED23jTqvkJR+jKqOa3wXKji
         AK4P40GyxDS7DYzIwAxIg9Ct9vIP4Y/R4R68FocTyyQct++cN1uTBAxp4atNvLZTLbRr
         YLRVv13g32WkfCNqTPM5jxTGIoCV5Nxy0l+LRf7aQOFjwU0kAM7IJx3uHX2arrU2HxHm
         D18zU+eyqdIPnvFUubeAgfqH4g876urjCbqNATd8+0i+dZ77OWYq+TD6UItx0uXhZL9w
         YWZ/2NhsZbvY7FLYlgB+CXzJyyIuddULMUCzZrMnv6WaxPanImgIpxmyr7Mvs/rNn7ks
         3KTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773137039; x=1773741839;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cSyEvOaRy4tLHYAdmpC9LN2SAkF2AsDq+mYwWTIqqSo=;
        b=aG6qtqnnL/lPNkA8pwJPL9u8s6+9ZaSsMOPTX+VgeBCl0VA1/Mb5l25Nzu5K7gCrKF
         1vwKlhRg7SQ1a5rht55ArPJBWQAVXgaOiWhSnAoPEUQO901hbAA/ZfePRKi1jbMTqQTj
         uoZEPXR/YEdWBF3srR0T4p9BnIlBQN7WsLpmc+b5xzt8iNNmqpxm99KycfCl1mOzyup5
         LRo58sZp0BcNaTpUEV1vwK3RI2ULgPDnob1odjuNqxkHChu12S54pFBQFtfuO6EzefNo
         VQFNVAtoZj6c6A0IvS3iCRMw5fD9Al8Q7aTymKro6M+jdBEsP9ww7pLrjrwiKpkkXHAK
         GMzg==
X-Forwarded-Encrypted: i=1; AJvYcCUGkVn+TW2aBhpqFzELFkdDHyFPKHi3wIO5jhxoduocUsmQzkaHhxQssAhylLKIRhJze7tT8oOJcUQR@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9rvEoCZB+70terGxWBQtAYCaDrYkaUaKHbNX81Z4KbZqyAnuj
	ZzdApekAzsB7SSkvQ9gQV1NmUPBIm4CwJy75Ml/Bk3G4wY9H9/TefC7NRoGePw82SP1abhwJ1ND
	wvqdv3fgyvgXbnKiybBiv7z/5Zp2WKFVe3Iy55ubx3Ngj3hx/y5kVqkYi9npnNb1Z
X-Gm-Gg: ATEYQzy1lJB8x8V54VTfU21aT6SnaOTIq02xYT/eys+sAxk1L73DLWMH6kHjrFe9szo
	FEDu3JUE9hZshwcthaMariBZ+bZOk337V4WtzYoRP3PvqSRUCt3QRLVaK+2XKu2bKPLc7h0d/kU
	8WnAfKc5l22cz8SBXXTMa2wMe2mG20uxohwpMIEKeUdGQonxek9MIBYrF2rjqn/Oabp65wkvRa2
	q5oyWZ+sXnGtnqEZD7PuiLqSy9JCvApddzxBe0B2aopLdjOnB1kYsSJS2bOc6zlZpS0z9QRxSaC
	LHSeTnc3zT9JmYUQKZyuQiTUt4mCX3mV7OO1zqoZUdBwp/eSed4w9kcGGwqPPk0xYRbCU7PI+xF
	pUHL2alPPJ1MqJ887l3oUx4I+C6VDRu4XtXRtLVvQmgH8LEwJXYprJZE0+umWSkAGfnksHmUS
X-Received: by 2002:a05:6830:7105:b0:7d7:5bb2:5690 with SMTP id 46e09a7af769-7d75bb25a54mr1354142a34.32.1773137038822;
        Tue, 10 Mar 2026 03:03:58 -0700 (PDT)
X-Received: by 2002:a05:6830:7105:b0:7d7:5bb2:5690 with SMTP id 46e09a7af769-7d75bb25a54mr1354122a34.32.1773137038434;
        Tue, 10 Mar 2026 03:03:58 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d746bdecbfsm4337611a34.10.2026.03.10.03.03.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 03:03:58 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 03:03:21 -0700
Subject: [PATCH v4 5/7] remoteproc: core: set recovery_disabled when doing
 rproc_add()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260310-knp-soccp-v4-5-0a91575e0e7e@oss.qualcomm.com>
References: <20260310-knp-soccp-v4-0-0a91575e0e7e@oss.qualcomm.com>
In-Reply-To: <20260310-knp-soccp-v4-0-0a91575e0e7e@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-3d134
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773137028; l=4033;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=rzsNgR6Z6A/Aj1a072eRukiJnHk7bSbHljNSQavXzas=;
 b=Jzix9uCWHDIGpLCMXn05f5ROaQDrbF384LqjJL15BhtSgwCkjPUJsgHSJdwDTgYF06xIAZQfq
 ebOnNacLrskAFkYuWfpAYTXwtV/kNRsKqQ0D5DXHfPJ+6Sspenk/3ZC
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: augoMCwFvTlPejcX0t9XUAgvO6mclavY
X-Proofpoint-ORIG-GUID: augoMCwFvTlPejcX0t9XUAgvO6mclavY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDA4NiBTYWx0ZWRfX1xK/Wa+tJhPO
 mBp5+J851zyjNsSFY8bufm7JLCvZPC5s9Vn8pDJm2yCYQQLNfEGUCyIw3qSIM2yt0n/sFJkwkvh
 UU4bzx1RQO1U/N4yW0DQ9fdvJRw7IasXo9oGedQEhBT1OKJ5y/+tESdUAqFHcxOqbE/coiasv8v
 VLXkrH1V62cQT//86zTA8Z4/jmKS1NyQjEtio1mKWVg50s/LmInVAgmW4R3fRl22JoKBdrwJqZ0
 2EusMJD9U2nkHqVsh3jmYmbofTBiFHITZdhDo61EPrEvCghjUBOifXDHz4Fb83GTZ0L/s/MelGg
 DgSIlbfAyKL3X/QYcgPqSuQSpGL1T6zX51PHT8VM3lCnbTfiNHtE7iFUnCoKonEqYdd6k9/rbMO
 73jvu4GhRI60A6O/eaW/MBKk4dV9pdAD7BBAycEgK8Tqgg1WBi63vuUcxAERBFi16Vsw0kNSJao
 lhg6BnJXd0jkf7QDyZA==
X-Authority-Analysis: v=2.4 cv=Cuays34D c=1 sm=1 tr=0 ts=69afec8f cx=c_pps
 a=7uPEO8VhqeOX8vTJ3z8K6Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=zG7gVldhHEX73meJmK4A:9 a=QEXdDO2ut3YA:10
 a=EXS-LbY8YePsIyqnH6vw:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 spamscore=0 adultscore=0 priorityscore=1501
 phishscore=0 suspectscore=0 lowpriorityscore=0 bulkscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100086
X-Rspamd-Queue-Id: EAA802491C2
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
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273435-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email];
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
X-Rspamd-Action: no action

rproc_add() called by rproc probe function failure will tear down all
the resources including do device_del() and remove subdev etc. If
rproc_report_crash() is called in this path, the rproc_crash_handler_work
could be excuted asynchronously, rproc_boot_recovery()->rproc_stop() will
be called with recovery enabled, which may cause NULL pointer dereference
if the resource has already been cleaned up.

[    5.251483] Unable to handle kernel NULL pointer dereference at virtual address 0000000000000300
[    5.260499] Mem abort info:
[    5.263384]   ESR = 0x0000000096000006
[    5.267248]   EC = 0x25: DABT (current EL), IL = 32 bits
[    5.272711]   SET = 0, FnV = 0
[    5.275865]   EA = 0, S1PTW = 0
[    5.279106]   FSC = 0x06: level 2 translation fault
[    5.284125] Data abort info:
[    5.287101]   ISV = 0, ISS = 0x00000006, ISS2 = 0x00000000
[    5.292742]   CM = 0, WnR = 0, TnD = 0, TagAccess = 0
[    5.297939]   GCS = 0, Overlay = 0, DirtyBit = 0, Xs = 0
[    5.303400] user pgtable: 4k pages, 48-bit VAs, pgdp=000000089e086000
[    5.310022] [0000000000000300] pgd=080000089e087403, p4d=080000089e087403, pud=080000089e088403, pmd=0000000000000000
[    5.320917] Internal error: Oops: 0000000096000006 [#1]  SMP
[    5.392494] Hardware name: Qualcomm Technologies, Inc. Kaanapali QRD (DT)
[    5.399466] Workqueue: rproc_recovery_wq rproc_crash_handler_work
[    5.405729] pstate: 23400005 (nzCv daif +PAN -UAO +TCO +DIT -SSBS BTYPE=--)
[    5.412879] pc : qcom_glink_smem_unregister+0x14/0x48 [qcom_glink_smem]
[    5.419674] lr : glink_subdev_stop+0x1c/0x30 [qcom_common]
[    5.425308] sp : ffff800080ffbc90
[    5.428724] x29: ffff800080ffbc90 x28: ffff00081be833f0 x27: ffff000800059c00
[    5.436053] x26: 0000000000000000 x25: ffff000800a56f80 x24: 61c8864680b583eb
[    5.443384] x23: ffff00081be83038 x22: 0000000000000001 x21: ffff00081be83000
[    5.450714] x20: ffff00081be833c0 x19: 0000000000000000 x18: 0000000000000010
[    5.458043] x17: 0000000000000000 x16: 0000000000000000 x15: ffff0008042684f8
[    5.465374] x14: 00000000000002dd x13: ffff0008042684f8 x12: ffffd37f69f967a0
[    5.472705] x11: ffffd37f6a006800 x10: ffffd37f69fee7c0 x9 : ffffd37f69fee818
[    5.480036] x8 : 0000000000017fe8 x7 : c0000000ffffefff x6 : 0000000000000001
[    5.487366] x5 : ffff000d6536d408 x4 : 0000000000000001 x3 : 0000000000000000
[    5.494697] x2 : ffffd37f5703c18c x1 : 0000000000000001 x0 : 0000000000000000
[    5.502028] Call trace:
[    5.504549]  qcom_glink_smem_unregister+0x14/0x48 [qcom_glink_smem] (P)
[    5.511344]  glink_subdev_stop+0x1c/0x30 [qcom_common]
[    5.516622]  rproc_stop+0x58/0x17c
[    5.520127]  rproc_trigger_recovery+0xb0/0x150
[    5.524693]  rproc_crash_handler_work+0xa4/0xc4
[    5.529346]  process_scheduled_works+0x18c/0x2d8
[    5.534092]  worker_thread+0x144/0x280
[    5.537952]  kthread+0x124/0x138
[    5.541280]  ret_from_fork+0x10/0x20
[    5.544965] Code: a9be7bfd 910003fd a90153f3 aa0003f3 (b9430000)
[    5.551224] ---[ end trace 0000000000000000 ]---

So set recovery_disabled during rproc_add().

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 drivers/remoteproc/remoteproc_core.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
index b087ed21858a..f66dde712cec 100644
--- a/drivers/remoteproc/remoteproc_core.c
+++ b/drivers/remoteproc/remoteproc_core.c
@@ -2286,7 +2286,10 @@ int rproc_add(struct rproc *rproc)
 {
 	struct device *dev = &rproc->dev;
 	int ret;
+	bool rproc_recovery_save;
 
+	rproc_recovery_save  = rproc->recovery_disabled;
+	rproc->recovery_disabled = true;
 	ret = rproc_validate(rproc);
 	if (ret < 0)
 		return ret;
@@ -2319,6 +2322,7 @@ int rproc_add(struct rproc *rproc)
 	list_add_rcu(&rproc->node, &rproc_list);
 	mutex_unlock(&rproc_list_mutex);
 
+	rproc->recovery_disabled = rproc_recovery_save;
 	return 0;
 
 rproc_remove_dev:

-- 
2.25.1


