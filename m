Return-Path: <devicetree+bounces-6192-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B634C7BA371
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 17:57:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 6F564B20999
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 15:57:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E1BD31A80;
	Thu,  5 Oct 2023 15:57:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="X42TXYIU"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEA6830FB8
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 15:57:25 +0000 (UTC)
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A38285D88
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 08:57:21 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-4064876e8b8so11274175e9.0
        for <devicetree@vger.kernel.org>; Thu, 05 Oct 2023 08:57:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696521440; x=1697126240; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vlyXWD3J9ZKLtEG4kFqZC6F+BFngumm//G6qV1MmHoc=;
        b=X42TXYIURWTH/4w5GRamfneZ8nYa6eXQpFylVb5CaLADWuRM77WvalZBwHbOl1JGQd
         2M/vTh3Ts+cJsO0w6KL/Qnc4oi1N0o88oo8+Mohea34fY0zJ7KtqqcaPnU0NaesMDxqc
         9zOibw0pnA+8FBDDsrzT3/ofMrCbJxX/Z7CspTtITk+d0WCvrPYL3iE4m0sSWW8z4cQx
         05XuXev65boPIJkAgYM+Gd9Dw5GN9gi6vT2dS2IHqqdNJOrBvhcQH0iE54/Ij/4sKHEA
         2o6u4la34fC3ZGMU3w0M+Kp4DbNVruZ9EOOSyQYq/QhclA9B5V/ECK2qh+eHNX4tau2C
         nxjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696521440; x=1697126240;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vlyXWD3J9ZKLtEG4kFqZC6F+BFngumm//G6qV1MmHoc=;
        b=EPBvfjt/0hsR6CQzg/FroASxtZWNzjwhaAocmWu1eQKrItDB5twdeOqfbx6objvVbk
         vIovI8LImt/E+r+tlQivu5nxIarAU2tdjPbb1u+NUBrgw3vSyd/PxX7uGwo6VKrZ1MiN
         wBy1dt+InhWweZ0HthWhYYqTwUbs1tp/1rLMptPbu/KQrfqU8nCUEHNOGT97NrX8b1nl
         LB2FQFu39WcZLzeZgz4SG3tMesVw8XIKBYsQyL+2LiZ1baZ1wVYFjc4wpeK5xWMynePC
         T37kNWyibRqTavg4j25tBX9TVDdhaOn9x1MY/EwhH2autd/aSLL3jtbPL6M5YiPQhkNF
         y2Iw==
X-Gm-Message-State: AOJu0YyuiTaPZOz6quhANeEb3HAzv9wm5CTFcnYPfPACQbAw4ol10sYL
	UQSpUmJn5cgSh+bCpzgBuJerxQ==
X-Google-Smtp-Source: AGHT+IE0vWL1vQO1z9DpX9n4MEfHKz76rO5Gwz/aq0YOdbHtUNRPBCp4X018L6m7cgDFC8mRNvJACg==
X-Received: by 2002:a5d:4286:0:b0:321:6c90:55f7 with SMTP id k6-20020a5d4286000000b003216c9055f7mr5225991wrq.18.1696521439877;
        Thu, 05 Oct 2023 08:57:19 -0700 (PDT)
Received: from gpeter-l.lan (host-92-12-225-146.as13285.net. [92.12.225.146])
        by smtp.gmail.com with ESMTPSA id t9-20020a5d4609000000b0031f8a59dbeasm2084336wrq.62.2023.10.05.08.57.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Oct 2023 08:57:19 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	conor+dt@kernel.org,
	sboyd@kernel.org,
	tomasz.figa@gmail.com,
	s.nawrocki@samsung.com,
	linus.walleij@linaro.org,
	wim@linux-watchdog.org,
	linux@roeck-us.net,
	catalin.marinas@arm.com,
	will@kernel.org,
	arnd@arndb.de,
	olof@lixom.net,
	cw00.choi@samsung.com
Cc: peter.griffin@linaro.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	semen.protsenko@linaro.org,
	soc@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-watchdog@vger.kernel.org
Subject: [PATCH 01/21] dt-bindings: interrupt-controller: Add gs101 interrupt controller
Date: Thu,  5 Oct 2023 16:55:58 +0100
Message-ID: <20231005155618.700312-2-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.42.0.582.g8ccd20d70d-goog
In-Reply-To: <20231005155618.700312-1-peter.griffin@linaro.org>
References: <20231005155618.700312-1-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,UPPERCASE_50_75,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add the gs101 SoC interrupt header that provides human readable
constants for all the IRQs in the SoC.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 .../dt-bindings/interrupt-controller/gs101.h  | 758 ++++++++++++++++++
 1 file changed, 758 insertions(+)
 create mode 100644 include/dt-bindings/interrupt-controller/gs101.h

diff --git a/include/dt-bindings/interrupt-controller/gs101.h b/include/dt-bindings/interrupt-controller/gs101.h
new file mode 100644
index 000000000000..51c8eb54eca2
--- /dev/null
+++ b/include/dt-bindings/interrupt-controller/gs101.h
@@ -0,0 +1,758 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * This header provides constants for gs101 interrupt controller.
+ *
+ * Copyright 2019-2023 Google LLC
+ *
+ */
+
+#ifndef _DT_BINDINGS_INTERRUPT_CONTROLLER_GS101_H
+#define _DT_BINDINGS_INTERRUPT_CONTROLLER_GS101_H
+
+#define ITNO	IRQ_TYPE_NONE
+#define ITER	IRQ_TYPE_EDGE_RISING
+#define ITEF	IRQ_TYPE_EDGE_FALLING
+#define ITEB	IRQ_TYPE_EDGE_BOTH
+#define ITLH	IRQ_TYPE_LEVEL_HIGH
+#define ITLL	IRQ_TYPE_LEVEL_LOW
+
+#define IRQ_ALIVE_EINT0		0
+#define IRQ_ALIVE_EINT1		1
+#define IRQ_ALIVE_EINT2		2
+#define IRQ_ALIVE_EINT3		3
+#define IRQ_ALIVE_EINT4		4
+#define IRQ_ALIVE_EINT5		5
+#define IRQ_ALIVE_EINT6		6
+#define IRQ_ALIVE_EINT7		7
+#define IRQ_ALIVE_EINT8		8
+#define IRQ_ALIVE_EINT9		9
+#define IRQ_ALIVE_EINT10	10
+#define IRQ_ALIVE_EINT11	11
+#define IRQ_ALIVE_EINT12	12
+#define IRQ_ALIVE_EINT13	13
+#define IRQ_ALIVE_EINT14	14
+#define IRQ_ALIVE_EINT15	15
+#define IRQ_ALIVE_EINT16	16
+#define IRQ_ALIVE_EINT17	17
+#define IRQ_ALIVE_EINT18	18
+#define IRQ_ALIVE_EINT19	19
+#define IRQ_ALIVE_EINT20	20
+#define IRQ_ALIVE_EINT21	21
+#define IRQ_ALIVE_EINT22	22
+#define IRQ_ALIVE_EINT23	23
+#define IRQ_ALIVE_EINT24	24
+#define IRQ_ALIVE_EINT25	25
+#define IRQ_ALIVE_EINT26	26
+#define IRQ_ALIVE_EINT27	27
+#define IRQ_ALIVE_EINT28	28
+#define IRQ_ALIVE_EINT29	29
+#define IRQ_ALIVE_EINT30	30
+#define IRQ_ALIVE_EINT31	31
+#define IRQ_ALIVE_EINT32	32
+#define IRQ_ALIVE_EINT33	33
+#define IRQ_ALIVE_EINT34	34
+#define IRQ_ALIVE_EINT35	35
+#define IRQ_ALIVE_EINT36	36
+#define IRQ_ALIVE_EINT37	37
+#define IRQ_ALIVE_EINT38	38
+#define IRQ_ALIVE_EINT39	39
+#define IRQ_ALIVE_EINT40	40
+#define IRQ_ALIVE_EINT41	41
+#define IRQ_ALIVE_EINT42	42
+#define IRQ_ALIVE_EINT43	43
+#define IRQ_ALIVE_EINT44	44
+#define IRQ_ALIVE_EINT45	45
+#define IRQ_ALIVE_EINT46	46
+#define IRQ_ALIVE_EINT47	47
+#define IRQ_ALIVE_EINT48	48
+#define IRQ_ALIVE_EINT49	49
+#define IRQ_ALIVE_EINT50	50
+#define IRQ_ALIVE_EINT51	51
+#define IRQ_ALIVE_EINT52	52
+#define IRQ_ALIVE_EINT53	53
+#define IRQ_ALIVE_EINT54	54
+#define IRQ_ALIVE_EINT55	55
+#define IRQ_ALIVE_EINT56	56
+#define IRQ_ALIVE_EINT57	57
+#define IRQ_ALIVE_EINT58	58
+#define IRQ_ALIVE_EINT59	59
+#define IRQ_ALIVE_EINT60	60
+#define IRQ_ALIVE_EINT61	61
+#define IRQ_ALIVE_EINT62	62
+#define IRQ_ALIVE_EINT63	63
+#define IRQ_ALIVE_EINT64	64
+#define IRQ_ALIVE_EINT65	65
+#define IRQ_ALIVE_EINT66	66
+#define IRQ_APM_USI0_UART_ALIVE	67
+#define IRQ_APM_USI0_USI_ALIVE	68
+#define IRQ_APM_USI1_UART_ALIVE	69
+#define IRQ_COMB_SFI_CE_NONSECURE_SYSREG_APM_ALIVE	70
+#define IRQ_COMB_SFI_UCE_NONSECURE_SYSREG_APM_ALIVE	71
+#define IRQ_MAILBOX_AOC2AP_ALIVE	72
+#define IRQ_MAILBOX_APM2AP_ALIVE	73
+#define IRQ_MAILBOX_DBGCORE2AP_ALIVE	74
+#define IRQ_OCP_WARN_CPUCL1_ALIVE	75
+#define IRQ_OCP_WARN_CPUCL2_ALIVE	76
+#define IRQ_OCP_WARN_GPU_ALIVE	77
+#define IRQ_OCP_WARN_TPU_ALIVE	78
+#define IRQ_RTC_ALARM_INT_ALIVE	79
+#define IRQ_RTC_TIC_INT_0_ALIVE	80
+#define IRQ_SMPL_WARN_ALIVE	81
+#define IRQ_SOFT_OCP_WARN_CPUCL1_ALIVE	82
+#define IRQ_SOFT_OCP_WARN_CPUCL2_ALIVE	83
+#define IRQ_SOFT_OCP_WARN_GPU_ALIVE	84
+#define IRQ_SOFT_OCP_WARN_TPU_ALIVE	85
+#define IRQ_SPEEDY_APM_ALIVE	86
+#define IRQ_SPEEDY_SUB_APM_ALIVE	87
+#define IRQ_TRTC_ALARM_INT_ALIVE	88
+#define IRQ_TRTC_TIC_INT_0_ALIVE	89
+#define IRQ_VDROOP1_ALIVE	90
+#define IRQ_VDROOP2_ALIVE	91
+#define IRQ_WDT_APM_ALIVE	92
+#define IRQ_WDT_DBGCORE_ALIVE	93
+#define NONSEQINT__UASC_APM_ALIVE	94
+#define NONSEQINT__UASC_DBGCORE_ALIVE	95
+#define NONSEQINT__UASC_G_SWD_ALIVE	96
+#define NONSEQINT__UASC_P_AOCAPM_ALIVE	97
+#define NONSEQINT__UASC_P_APM_ALIVE	98
+#define O_INTERRUPT_S2__SYSMMU_D_APM_ALIVE	99
+#define TZINT__UASC_APM_ALIVE	100
+#define TZINT__UASC_DBGCORE_ALIVE	101
+#define TZINT__UASC_G_SWD_ALIVE	102
+#define TZINT__UASC_P_AOCAPM_ALIVE	103
+#define TZINT__UASC_P_APM_ALIVE	104
+#define INTR_AOC_PPMU_AOC	105
+#define INTR_AOCUSB_PPMU_AOC	106
+#define IRQ_AOC_TIMER0_AOC	107
+#define IRQ_AOC_Watchdog_CPU_AOC	108
+#define INTREQ_AOCPLL_LOCK_STATUS_AOC	109
+#define IRQ_SYSMMU_AOC_S1_NS_AOC	110
+#define IRQ_SYSMMU_AOC_S1_S_AOC	111
+#define IRQ_SYSMMU_AOC_S2_AOC	112
+#define IRQ_UASC_NS_AOC_AOC	113
+#define IRQ_UASC_S_AOC_AOC	114
+#define IRQ_BO_XINT_BO	115
+#define IRQ_PPMU_UPPER_OR_NORMAL_BO	116
+#define IRQ_SSMT_BO_BO	117
+#define IRQ_SYSMMU_S1_NS_BO_BO	118
+#define IRQ_SYSMMU_S1_S_BO_BO	119
+#define IRQ_SYSMMU_S2_BO_BO	120
+#define IRQ_UASC_NS_BO_BO	121
+#define IRQ_UASC_S_BO_BO	122
+#define IRQ_PPC_CYCLE_AOC_L_BUS0	123
+#define IRQ_PPC_CYCLE_AOC_UON_BUS0	124
+#define IRQ_PPC_EVENT_AOC_L_BUS0	125
+#define IRQ_PPC_EVENT_AOC_UON_BUS0	126
+#define IRQ_TREX_D_BUS0_debugInterrupt_BUS0	127
+#define IRQ_TREX_P_BUS0_debugInterrupt_BUS0	128
+#define IRQ_TREX_PPMU_BUS0M0_BUS0	129
+#define IRQ_TREX_D0_BUS1_debugInterrupt_BUS1	130
+#define IRQ_TREX_P_BUS1_debugInterrupt_BUS1	131
+#define IRQ_TREX_PPMU_BUS1M0_BUS1	132
+#define IRQ_TREX_PPMU_BUS1M1_BUS1	133
+#define IRQ_TREX_PPMU_BUS1M2_BUS1	134
+#define IRQ_TREX_PPMU_BUS1M3_BUS1	135
+#define IRQ_PPC_CYCLE_BUS2_L_BUS2	136
+#define IRQ_PPC_CYCLE_BUS2_UON_BUS2	137
+#define IRQ_PPC_CYCLE_G3D_L_BUS2	138
+#define IRQ_PPC_CYCLE_G3D_UON_BUS2	139
+#define IRQ_PPC_CYCLE_TPU_L_BUS2	140
+#define IRQ_PPC_CYCLE_TPU_UON_BUS2	141
+#define IRQ_PPC_EVENT_BUS2_L_AND_BUS2	142
+#define IRQ_PPC_EVENT_BUS2_L_OR_BUS2	143
+#define IRQ_PPC_EVENT_BUS2_UON_AND_BUS2	144
+#define IRQ_PPC_EVENT_BUS2_UON_OR_BUS2	145
+#define IRQ_PPC_EVENT_G3D_L_AND_BUS2	146
+#define IRQ_PPC_EVENT_G3D_L_OR_BUS2	147
+#define IRQ_PPC_EVENT_G3D_UON_AND_BUS2	148
+#define IRQ_PPC_EVENT_G3D_UON_OR_BUS2	149
+#define IRQ_PPC_EVENT_TPU_L_BUS2	150
+#define IRQ_PPC_EVENT_TPU_UON_BUS2	151
+#define IRQ_PPCFW_G3D_BUS2	152
+#define IRQ_SYSMMU_G3D0_BUS2	153
+#define IRQ_SYSMMU_G3D1_BUS2	154
+#define IRQ_SYSMMU_G3D2_BUS2	155
+#define IRQ_SYSMMU_G3D3_BUS2	156
+#define IRQ_TREX_D_BUS2_debugInterrupt_BUS2	157
+#define IRQ_TREX_P_BUS2_debugInterrupt_BUS2	158
+#define IRQ_TREX_PPMU_BUS2M0_BUS2	159
+#define IRQ_TREX_PPMU_BUS2M1_BUS2	160
+#define IRQ_TREX_PPMU_BUS2M2_BUS2	161
+#define IRQ_TREX_PPMU_BUS2M3_BUS2	162
+#define IRQ_TREX_PPMU_GPU0_BUS2	163
+#define IRQ_TREX_PPMU_GPU1_BUS2	164
+#define IRQ_TREX_PPMU_GPU2_BUS2	165
+#define IRQ_TREX_PPMU_GPU3_BUS2	166
+#define IRQ_BDU_O_INT_CORE	167
+#define IRQ_CCI_nERRIRQ_CORE	168
+#define IRQ_CCI_nEVNTCNTOVERFLOW_0_CORE	169
+#define IRQ_CCI_nEVNTCNTOVERFLOW_1_CORE	170
+#define IRQ_CCI_nEVNTCNTOVERFLOW_2_CORE	171
+#define IRQ_CCI_nEVNTCNTOVERFLOW_3_CORE	172
+#define IRQ_CCI_nEVNTCNTOVERFLOW_4_CORE	173
+#define IRQ_CCI_nEVNTCNTOVERFLOW_5_CORE	174
+#define IRQ_CCI_nEVNTCNTOVERFLOW_6_CORE	175
+#define IRQ_CCI_nEVNTCNTOVERFLOW_7_CORE	176
+#define IRQ_CORE_PPC_CON_O_IL_AND_PPC_BUS2_EVENT_CORE	177
+#define IRQ_CORE_PPC_CON_O_IL_AND_PPC_CCI_EVENT_CORE	178
+#define IRQ_CORE_PPC_CON_O_IL_AND_PPC_CPUCL0_EVENT_CORE	179
+#define IRQ_CORE_PPC_CON_O_IL_OR_PPC_BUS2_EVENT_CORE	180
+#define IRQ_CORE_PPC_CON_O_IL_OR_PPC_CCI_EVENT_CORE	181
+#define IRQ_CORE_PPC_CON_O_IL_OR_PPC_CPUCL0_EVENT_CORE	182
+#define IRQ_CORE_PPC_CON_O_IUON_AND_PPC_BUS2_EVENT_CORE	183
+#define IRQ_CORE_PPC_CON_O_IUON_AND_PPC_CCI_EVENT_CORE	184
+#define IRQ_CORE_PPC_CON_O_IUON_AND_PPC_CPUCL0_EVENT_CORE	185
+#define IRQ_CORE_PPC_CON_O_IUON_OR_PPC_BUS2_EVENT_CORE	186
+#define IRQ_CORE_PPC_CON_O_IUON_OR_PPC_CCI_EVENT_CORE	187
+#define IRQ_CORE_PPC_CON_O_IUON_OR_PPC_CPUCL0_EVENT_CORE	188
+#define IRQ_LD_SLC_CH0_O_APC_NS_IRQ_CORE	189
+#define IRQ_LD_SLC_CH0_O_APC_S_IRQ_CORE	190
+#define IRQ_LD_SLC_CH0_O_PPMPU_IRQ_CORE	191
+#define IRQ_LD_SLC_CH0_O_UASC_GSA_IRQ_CORE	192
+#define IRQ_LD_SLC_CH0_O_UASC_NS_IRQ_CORE	193
+#define IRQ_LD_SLC_CH0_O_UASC_TZ_IRQ_CORE	194
+#define IRQ_LD_SLC_CH1_O_APC_NS_IRQ_CORE	195
+#define IRQ_LD_SLC_CH1_O_APC_S_IRQ_CORE	196
+#define IRQ_LD_SLC_CH1_O_PPMPU_IRQ_CORE	197
+#define IRQ_LD_SLC_CH1_O_UASC_GSA_IRQ_CORE	198
+#define IRQ_LD_SLC_CH1_O_UASC_NS_IRQ_CORE	199
+#define IRQ_LD_SLC_CH1_O_UASC_TZ_IRQ_CORE	200
+#define IRQ_LD_SLC_CH2_O_APC_NS_IRQ_CORE	201
+#define IRQ_LD_SLC_CH2_O_APC_S_IRQ_CORE	202
+#define IRQ_LD_SLC_CH2_O_PPMPU_IRQ_CORE	203
+#define IRQ_LD_SLC_CH2_O_UASC_GSA_IRQ_CORE	204
+#define IRQ_LD_SLC_CH2_O_UASC_NS_IRQ_CORE	205
+#define IRQ_LD_SLC_CH2_O_UASC_TZ_IRQ_CORE	206
+#define IRQ_LD_SLC_CH3_O_APC_NS_IRQ_CORE	207
+#define IRQ_LD_SLC_CH3_O_APC_S_IRQ_CORE	208
+#define IRQ_LD_SLC_CH3_O_PPMPU_IRQ_CORE	209
+#define IRQ_LD_SLC_CH3_O_UASC_GSA_IRQ_CORE	210
+#define IRQ_LD_SLC_CH3_O_UASC_NS_IRQ_CORE	211
+#define IRQ_LD_SLC_CH3_O_UASC_TZ_IRQ_CORE	212
+#define IRQ_PPC_BUS0_M0_CYCLE_O_IL_CORE	213
+#define IRQ_PPC_BUS0_M0_CYCLE_O_IUON_CORE	214
+#define IRQ_PPC_BUS0_M0_EVENT_O_IL_CORE	215
+#define IRQ_PPC_BUS0_M0_EVENT_O_IUON_CORE	216
+#define IRQ_PPC_BUS2_M0_CYCLE_O_IL_CORE	217
+#define IRQ_PPC_BUS2_M0_CYCLE_O_IUON_CORE	218
+#define IRQ_PPC_CCI_M1_CYCLE_O_IL_CORE	219
+#define IRQ_PPC_CCI_M1_CYCLE_O_IUON_CORE	220
+#define IRQ_PPC_CPUCL0_D0_CYCLE_O_IL_CORE	221
+#define INTREQ__SECURE_LOG			224
+#define IRQ_PPC_CPUCL0_D0_CYCLE_O_IUON_CORE	227
+#define IRQ_PPC_DEBUG_O_IL_CORE	228
+#define IRQ_PPC_DEBUG_O_IUON_CORE	229
+#define IRQ_PPC_EH_CYCLE_O_IL_CORE	230
+#define IRQ_PPC_EH_CYCLE_O_IUON_CORE	231
+#define IRQ_PPC_EH_EVENT_O_IL_CORE	232
+#define IRQ_PPC_EH_EVENT_O_IUON_CORE	233
+#define IRQ_PPC_IO_CYCLE_O_IL_CORE	234
+#define IRQ_PPC_IO_CYCLE_O_IUON_CORE	235
+#define IRQ_PPC_IO_EVENT_O_IL_CORE	236
+#define IRQ_PPC_IO_EVENT_O_IUON_CORE	237
+#define IRQ_PPMU_ACE_CPUCL0_O_IL_CORE	238
+#define IRQ_PPMU_ACE_CPUCL0_O_IUON_CORE	239
+#define IRQ_PPMU_ACE_CPUCL1_O_IL_CORE	240
+#define IRQ_PPMU_ACE_CPUCL1_O_IUON_CORE	241
+#define IRQ_TREX_D_CORE_debugInterrupt_CORE	242
+#define IRQ_TREX_D_CORE_ppcInterrupt_CORE_CCI_CORE	243
+#define IRQ_TREX_D_CORE_ppcInterrupt_CORE_DP_CORE	244
+#define IRQ_TREX_D_CORE_ppcInterrupt_CORE_M0_CORE	245
+#define IRQ_TREX_D_CORE_ppcInterrupt_CORE_M1_CORE	246
+#define IRQ_TREX_D_CORE_ppcInterrupt_CORE_M2_CORE	247
+#define IRQ_TREX_D_CORE_ppcInterrupt_CORE_M3_CORE	248
+#define IRQ_TREX_D_CORE_ppcInterrupt_CPU0_CORE	249
+#define IRQ_TREX_D_CORE_ppcInterrupt_CPU1_CORE	250
+#define IRQ_TREX_D_CORE_ppcInterrupt_CPU2_CORE	251
+#define IRQ_TREX_D_CORE_ppcInterrupt_CPU3_CORE	252
+#define IRQ_TREX_P_CORE_debugInterrupt_CORE	253
+#define IRQ_TREX_P_CORE_ppcInterrupt_CCI_CORE	254
+#define IRQ_TREX_P_CORE_ppcInterrupt_CORE_ALIVE_CORE	255
+#define IRQ_TREX_P_CORE_ppcInterrupt_CORE_DP_CORE	256
+#define IRQ_CPUCL0_CLUSTERPMUIRQ_CPUCL0	257
+#define IRQ_CPUCL0_DDD_APBIF0_FAST_PEND_CPUCL0	258
+#define IRQ_CPUCL0_DDD_APBIF0_HIGH_PEND_CPUCL0	259
+#define IRQ_CPUCL0_DDD_APBIF0_LOW_PEND_CPUCL0	260
+#define IRQ_CPUCL0_DDD_APBIF0_SLOW_PEND_CPUCL0	261
+#define IRQ_CPUCL0_DDD_APBIF1_FAST_PEND_CPUCL0	262
+#define IRQ_CPUCL0_DDD_APBIF1_HIGH_PEND_CPUCL0	263
+#define IRQ_CPUCL0_DDD_APBIF1_LOW_PEND_CPUCL0	264
+#define IRQ_CPUCL0_DDD_APBIF1_SLOW_PEND_CPUCL0	265
+#define IRQ_CPUCL0_DDD_APBIF2_FAST_PEND_CPUCL0	266
+#define IRQ_CPUCL0_DDD_APBIF2_HIGH_PEND_CPUCL0	267
+#define IRQ_CPUCL0_DDD_APBIF2_LOW_PEND_CPUCL0	268
+#define IRQ_CPUCL0_DDD_APBIF2_SLOW_PEND_CPUCL0	269
+#define IRQ_CPUCL0_DDD_APBIF3_FAST_PEND_CPUCL0	270
+#define IRQ_CPUCL0_DDD_APBIF3_HIGH_PEND_CPUCL0	271
+#define IRQ_CPUCL0_DDD_APBIF3_LOW_PEND_CPUCL0	272
+#define IRQ_CPUCL0_DDD_APBIF3_SLOW_PEND_CPUCL0	273
+#define IRQ_CPUCL0_ERRIRQ_0_CPUCL0	274
+#define IRQ_CPUCL0_ERRIRQ_1_CPUCL0	275
+#define IRQ_CPUCL0_ERRIRQ_2_CPUCL0	276
+#define IRQ_CPUCL0_ERRIRQ_3_CPUCL0	277
+#define IRQ_CPUCL0_ERRIRQ_4_CPUCL0	278
+#define IRQ_CPUCL0_ERRIRQ_5_CPUCL0	279
+#define IRQ_CPUCL0_ERRIRQ_6_CPUCL0	280
+#define IRQ_CPUCL0_ERRIRQ_7_CPUCL0	281
+#define IRQ_CPUCL0_ERRIRQ_8_CPUCL0	282
+#define IRQ_CPUCL0_FAULTIRQ_0_CPUCL0	283
+#define IRQ_CPUCL0_FAULTIRQ_1_CPUCL0	284
+#define IRQ_CPUCL0_FAULTIRQ_2_CPUCL0	285
+#define IRQ_CPUCL0_FAULTIRQ_3_CPUCL0	286
+#define IRQ_CPUCL0_FAULTIRQ_4_CPUCL0	287
+#define IRQ_CPUCL0_FAULTIRQ_5_CPUCL0	288
+#define IRQ_CPUCL0_FAULTIRQ_6_CPUCL0	289
+#define IRQ_CPUCL0_FAULTIRQ_7_CPUCL0	290
+#define IRQ_CPUCL0_FAULTIRQ_8_CPUCL0	291
+#define O_HPM_IRQ_CPUCL0_CPUCL0	292
+#define IRQ_CPUCL0_S2MPU_IRQ_CPUCL0	293
+#define IRQ_CSIS0_CSIS	294
+#define IRQ_CSIS1_CSIS	295
+#define IRQ_CSIS2_CSIS	296
+#define IRQ_CSIS3_CSIS	297
+#define IRQ_CSIS4_CSIS	298
+#define IRQ_CSIS5_CSIS	299
+#define IRQ_CSIS6_CSIS	300
+#define IRQ_CSIS7_CSIS	301
+#define IRQ_CSIS_DMA0_CSIS	302
+#define IRQ_CSIS_DMA1_CSIS	303
+#define IRQ_CSIS_DMA2_CSIS	304
+#define IRQ_CSIS_DMA3_CSIS	305
+#define IRQ_EBUF_OVERFLOW0_CSIS	306
+#define IRQ_EBUF_OVERFLOW1_CSIS	307
+#define IRQ_EBUF_OVERFLOW2_CSIS	308
+#define IRQ_EBUF_OVERFLOW3_CSIS	309
+#define IRQ_MUTE_CSIS0_CSIS	310
+#define IRQ_MUTE_CSIS1_CSIS	311
+#define IRQ_MUTE_CSIS2_CSIS	312
+#define IRQ_MUTE_CSIS3_CSIS	313
+#define IRQ_MUTE_STRP0_CSIS	314
+#define IRQ_MUTE_STRP1_CSIS	315
+#define IRQ_MUTE_STRP2_CSIS	316
+#define IRQ_MUTE_ZSL0_CSIS	317
+#define IRQ_MUTE_ZSL1_CSIS	318
+#define IRQ_MUTE_ZSL2_CSIS	319
+#define IRQ_PPMU_D0_CSIS_UPPER_OR_NORMAL_CSIS	320
+#define IRQ_PPMU_D1_CSIS_UPPER_OR_NORMAL_CSIS	321
+#define IRQ_STRP_DMA0_CSIS	322
+#define IRQ_STRP_DMA1_CSIS	323
+#define IRQ_STRP_DMA2_CSIS	324
+#define IRQ_SYSMMU_D0_CSIS_S1_NS_CSIS	325
+#define IRQ_SYSMMU_D0_CSIS_S1_S_CSIS	326
+#define IRQ_SYSMMU_D0_CSIS_S2_CSIS	327
+#define IRQ_SYSMMU_D1_CSIS_S1_NS_CSIS	328
+#define IRQ_SYSMMU_D1_CSIS_S1_S_CSIS	329
+#define IRQ_SYSMMU_D1_CSIS_S2_CSIS	330
+#define IRQ_ZSL_DMA0_CSIS	331
+#define IRQ_ZSL_DMA1_CSIS	332
+#define IRQ_ZSL_DMA2_CSIS	333
+#define IRQ_DISP_DECON0_DQE_DIMMING_END_DISP	334
+#define IRQ_DISP_DECON0_DQE_DIMMING_START_DISP	335
+#define IRQ_DISP_DECON0_EXTRA_DISP	336
+#define IRQ_DISP_DECON0_FRAME_DONE_DISP	337
+#define IRQ_DISP_DECON0_FRAME_START_DISP	338
+#define IRQ_DISP_DECON1_EXTRA_DISP	339
+#define IRQ_DISP_DECON1_FRAME_DONE_DISP	340
+#define IRQ_DISP_DECON1_FRAME_START_DISP	341
+#define IRQ_DISP_DECON2_EXTRA_DISP	342
+#define IRQ_DISP_DECON2_FRAME_DONE_DISP	343
+#define IRQ_DISP_DECON2_FRAME_START_DISP	344
+#define IRQ_DISP_DSIM0_DISP	345
+#define IRQ_DISP_DSIM1_DISP	346
+#define IRQ_DNS_0_DNS	347
+#define IRQ_DNS_1_DNS	348
+#define IRQ_DNS_MUTE_DNS	349
+#define IRQ_PPMU_DNS_UPPER_OR_NORMAL_DNS	350
+#define IRQ_SYSMMU_DNS_S1_NS_DNS	351
+#define IRQ_SYSMMU_DNS_S1_S_DNS	352
+#define IRQ_SYSMMU_DNS_S2_DNS	353
+#define IRQ_DPU_DMA_L0_DPU	354
+#define IRQ_DPU_DMA_L1_DPU	355
+#define IRQ_DPU_DMA_L2_DPU	356
+#define IRQ_DPU_DMA_L3_DPU	357
+#define IRQ_DPU_DMA_L4_DPU	358
+#define IRQ_DPU_DMA_L5_DPU	359
+#define IRQ_DPU_DMA_WB_DPU	360
+#define IRQ_DPU_DPP_L0_DPU	361
+#define IRQ_DPU_DPP_L1_DPU	362
+#define IRQ_DPU_DPP_L2_DPU	363
+#define IRQ_DPU_DPP_L3_DPU	364
+#define IRQ_DPU_DPP_L4_DPU	365
+#define IRQ_DPU_DPP_L5_DPU	366
+#define IRQ_PPMU_DPUD0_UPPER_OR_NORMAL_DPU	367
+#define IRQ_PPMU_DPUD1_UPPER_OR_NORMAL_DPU	368
+#define IRQ_PPMU_DPUD2_UPPER_OR_NORMAL_DPU	369
+#define IRQ_SYSMMU_DPUD0_S1_NS_DPU	370
+#define IRQ_SYSMMU_DPUD0_S1_S_DPU	371
+#define IRQ_SYSMMU_DPUD0_S2_DPU	372
+#define IRQ_SYSMMU_DPUD1_S1_NS_DPU	373
+#define IRQ_SYSMMU_DPUD1_S1_S_DPU	374
+#define IRQ_SYSMMU_DPUD1_S2_DPU	375
+#define IRQ_SYSMMU_DPUD2_S1_NS_DPU	376
+#define IRQ_SYSMMU_DPUD2_S1_S_DPU	377
+#define IRQ_SYSMMU_DPUD2_S2_DPU	378
+#define IRQ_EH_0_EH	379
+#define IRQ_EH_1_EH	380
+#define IRQ_EH_2_EH	381
+#define IRQ_EH_3_EH	382
+#define IRQ_EH_4_EH	383
+#define IRQ_EH_5_EH	384
+#define IRQ_EH_6_EH	385
+#define IRQ_EH_7_EH	386
+#define IRQ_EH_8_EH	387
+#define IRQ_EH_9_EH	388
+#define IRQ_PPMU_UPPER_OR_NORMAL_EH	389
+#define IRQ_SSMT_EH_EH	390
+#define IRQ_SYSMMU_S2_EH_EH	391
+#define IRQ_UASC_GSA_EH_EH	392
+#define IRQ_UASC_NS_EH_EH	393
+#define IRQ_UASC_S_EH_EH	394
+#define IRQ_G2D_G2D	395
+#define IRQ_JPEG_G2D	396
+#define IRQ_PPMU_D0_G2D_interrupt_upper_or_normal_G2D	397
+#define IRQ_PPMU_D1_G2D_interrupt_upper_or_normal_G2D	398
+#define IRQ_PPMU_D2_G2D_interrupt_upper_or_normal_G2D	399
+#define IRQ_SSMT_D0_G2D_intreq_G2D	400
+#define IRQ_SSMT_D1_G2D_intreq_G2D	401
+#define IRQ_SSMT_D2_G2D_intreq_G2D	402
+#define IRQ_SYSMMU_D0_G2D_interrupt_s1_ns_G2D	403
+#define IRQ_SYSMMU_D0_G2D_interrupt_s2_G2D	404
+#define IRQ_SYSMMU_D0_G2D_interrupt_s1_s_G2D	405
+#define IRQ_SYSMMU_D1_G2D_interrupt_s1_ns_G2D	406
+#define IRQ_SYSMMU_D1_G2D_interrupt_s2_G2D	407
+#define IRQ_SYSMMU_D1_G2D_interrupt_s1_s_G2D	408
+#define IRQ_SYSMMU_D2_G2D_interrupt_s1_ns_G2D	409
+#define IRQ_SYSMMU_D2_G2D_interrupt_s2_G2D	410
+#define IRQ_SYSMMU_D2_G2D_interrupt_s1_s_G2D	411
+#define IRQ_G3AA_G3AA	412
+#define IRQ_PPMU_G3AA_UPPER_OR_NORMAL_G3AA	413
+#define IRQ_SSMT_G3AA_G3AA	414
+#define IRQ_SYSMMU_G3AA_S1_NS_G3AA	415
+#define IRQ_SYSMMU_G3AA_S1_S_G3AA	416
+#define IRQ_SYSMMU_G3AA_S2_G3AA	417
+#define IRQ_G3D_IRQEVENT_G3D	418
+#define IRQ_G3D_IRQGPU_G3D	419
+#define IRQ_G3D_IRQJOB_G3D	420
+#define IRQ_G3D_IRQMMU_G3D	421
+#define IRQ_UASC_GSA_G3D_G3D	422
+#define IRQ_UASC_NS_G3D_G3D	423
+#define IRQ_UASC_S_G3D_G3D	424
+#define O_ADD_APBIF_G3D_FLAG_IRQ_PEND_G3D	425
+#define O_DDD_APBIF_G3D_DD_ERR_IRQ_FAST_PEND_G3D	426
+#define O_DDD_APBIF_G3D_DD_ERR_IRQ_SLOW_PEND_G3D	427
+#define O_HPM_IRQ_G3D	428
+#define IRQ_GDC0_IRQ_GDC	429
+#define IRQ_GDC0_Mute_IRQ_GDC	430
+#define IRQ_GDC1_IRQ_GDC	431
+#define IRQ_GDC1_Mute_IRQ_GDC	432
+#define IRQ_PPMU_D0_GDC_UPPER_OR_NORMAL_GDC	433
+#define IRQ_PPMU_D1_GDC_UPPER_OR_NORMAL_GDC	434
+#define IRQ_PPMU_D_SCSC_UPPER_OR_NORMAL_GDC	435
+#define IRQ_SCSC_IRQ_GDC	436
+#define IRQ_SCSC_NonSecu_Mute_IRQ_GDC	437
+#define IRQ_SYSMMU_D0_GDC_S1_NS_GDC	438
+#define IRQ_SYSMMU_D0_GDC_S1_S_GDC	439
+#define IRQ_SYSMMU_D0_GDC_S2_GDC	440
+#define IRQ_SYSMMU_D1_GDC_S1_NS_GDC	441
+#define IRQ_SYSMMU_D1_GDC_S1_S_GDC	442
+#define IRQ_SYSMMU_D1_GDC_S2_GDC	443
+#define IRQ_SYSMMU_D2_GDC_S1_NS_GDC	444
+#define IRQ_SYSMMU_D2_GDC_S1_S_GDC	445
+#define IRQ_SYSMMU_D2_GDC_S2_GDC	446
+#define IRQ_MAILBOX_GSA2NONTZ_GSA	447
+#define IRQ_MAILBOX_GSA2OSCAR_GSA	448
+#define IRQ_MAILBOX_GSA2PAINTBOX_GSA	449
+#define IRQ_MAILBOX_GSA2TZ_GSA	450
+#define SYSMMU_NS__INTERRUPT_GSA	451
+#define SYSMMU_S2MPU__INTERRUPT_GSA	452
+#define SYSMMU_S__INTERRUPT_GSA	453
+#define IRQ_DP_LINK_HSI0	454
+#define IRQ_PPMU_HSI0_AOC_UPPER_OR_NORMAL_HSI0	455
+#define IRQ_PPMU_HSI0_BUS0_UPPER_OR_NORMAL_HSI0	456
+#define IRQ_SYSMMU_USB_HSI0	457
+#define IRQ_USB2_REMOTE_CONNECT_GIC_HSI0	458
+#define IRQ_USB2_REMOTE_TIMER_GIC_HSI0	459
+#define IRQ_USB2_REMOTE_WAKEUP_GIC_HSI0	460
+#define IRQ_USB31DRD_FSVMINUS_GIC_HSI0	461
+#define IRQ_USB31DRD_FSVPLUS_GIC_HSI0	462
+#define IRQ_USB31DRD_GIC_0_HSI0	463
+#define IRQ_USB31DRD_GIC_1_HSI0	464
+#define IRQ_USB_UDBG_HSI0	465
+#define IRQ_USB_WAKEUP_HSI0	466
+#define NONSEQINT__UASC_HSI0_CTRL_HSI0	467
+#define NONSEQINT__UASC_HSI0_LINK_HSI0	468
+#define TZINT__UASC_HSI0_CTRL_HSI0	469
+#define TZINT__UASC_HSI0_LINK_HSI0	470
+#define IRQ_GPIO_HSI1_HSI1	471
+#define IRQ_PCIE_GEN4A_0_HSI1	472
+#define IRQ_PCIE_GEN4A_MSI_0_HSI1	473
+#define IRQ_PCIE_GEN4A_MSI_1_HSI1	474
+#define IRQ_PCIE_GEN4A_MSI_2_HSI1	475
+#define IRQ_PCIE_GEN4A_MSI_3_HSI1	476
+#define IRQ_PCIE_GEN4A_MSI_4_HSI1	477
+#define IRQ_PCIE_GEN4B_0_HSI1	478
+#define IRQ_PCIE_GEN4B_MSI_0_HSI1	479
+#define IRQ_PCIE_GEN4B_MSI_1_HSI1	480
+#define IRQ_PCIE_GEN4B_MSI_2_HSI1	481
+#define IRQ_PCIE_GEN4B_MSI_3_HSI1	482
+#define IRQ_PCIE_GEN4B_MSI_4_HSI1	483
+#define IRQ_PCIE_IA_GEN4A_0_HSI1	484
+#define IRQ_PCIE_IA_GEN4B_0_HSI1	485
+#define IRQ_PCIE_PCS_GEN4_0_HSI1	486
+#define IRQ_PCIE_PCS_GEN4B_0_HSI1	487
+#define IRQ_PPMU_HSI1_UPPER_OR_NORMAL_HSI1	488
+#define IRQ_SSMT_HSI1_HSI1	489
+#define IRQ_SYSMMU_HSI1_S2MPU_HSI1	490
+#define IRQ_UASC_GSA_PCIE_GEN4A_DBI_0_HSI1	491
+#define IRQ_UASC_GSA_PCIE_GEN4A_SLV_0_HSI1	492
+#define IRQ_UASC_GSA_PCIE_GEN4B_DBI_0_HSI1	493
+#define IRQ_UASC_GSA_PCIE_GEN4B_SLV_0_HSI1	494
+#define IRQ_UASC_NS_PCIE_GEN4A_DBI_0_HSI1	495
+#define IRQ_UASC_NS_PCIE_GEN4A_SLV_0_HSI1	496
+#define IRQ_UASC_NS_PCIE_GEN4B_DBI_0_HSI1	497
+#define IRQ_UASC_NS_PCIE_GEN4B_SLV_0_HSI1	498
+#define IRQ_UASC_S_PCIE_GEN4A_DBI_0_HSI1	499
+#define IRQ_UASC_S_PCIE_GEN4A_SLV_0_HSI1	500
+#define IRQ_UASC_S_PCIE_GEN4B_DBI_0_HSI1	501
+#define IRQ_UASC_S_PCIE_GEN4B_SLV_0_HSI1	502
+#define IRQ_GPIO_HSI2_HSI2	503
+#define IRQ_MMC_CARD_HSI2	504
+#define IRQ_NONSEQINT_PCIE_GEN4A_DBI_1_HSI2	505
+#define IRQ_NONSEQINT_PCIE_GEN4A_SLV_1_HSI2	506
+#define IRQ_NONSEQINT_PCIE_GEN4B_DBI_1_HSI2	507
+#define IRQ_NONSEQINT_PCIE_GEN4B_SLV_1_HSI2	508
+#define IRQ_PCIE_GEN4A_1_HSI2	509
+#define IRQ_PCIE_GEN4A_1_MSI_0_HSI2	510
+#define IRQ_PCIE_GEN4A_1_MSI_1_HSI2	511
+#define IRQ_PCIE_GEN4A_1_MSI_2_HSI2	512
+#define IRQ_PCIE_GEN4A_1_MSI_3_HSI2	513
+#define IRQ_PCIE_GEN4A_1_MSI_4_HSI2	514
+#define IRQ_PCIE_GEN4B_1_HSI2	515
+#define IRQ_PCIE_GEN4B_1_MSI_0_HSI2	516
+#define IRQ_PCIE_GEN4B_1_MSI_1_HSI2	517
+#define IRQ_PCIE_GEN4B_1_MSI_2_HSI2	518
+#define IRQ_PCIE_GEN4B_1_MSI_3_HSI2	519
+#define IRQ_PCIE_GEN4B_1_MSI_4_HSI2	520
+#define IRQ_PCIE_IA_GEN4A_1_HSI2	521
+#define IRQ_PCIE_IA_GEN4B_1_HSI2	522
+#define IRQ_PCIE_PCS_GEN4_1_HSI2	523
+#define IRQ_PCIE_PCS_GEN4B_1_HSI2	524
+#define IRQ_PPMU_HSI2_UPPER_OR_NORMAL_HSI2	525
+#define IRQ_SSMT_HSI2_HSI2	526
+#define IRQ_SYSMMU_HSI2_S2_HSI2	527
+#define IRQ_TZINT_PCIE_GEN4A_DBI_1_HSI2	528
+#define IRQ_TZINT_PCIE_GEN4A_SLV_1_HSI2	529
+#define IRQ_TZINT_PCIE_GEN4B_DBI_1_HSI2	530
+#define IRQ_TZINT_PCIE_GEN4B_SLV_1_HSI2	531
+#define IRQ_UFS_EMBD_HSI2	532
+#define IRQ_IPP_CH0_0_IPP	533
+#define IRQ_IPP_CH0_1_IPP	534
+#define IRQ_IPP_CH1_0_IPP	535
+#define IRQ_IPP_CH1_1_IPP	536
+#define IRQ_IPP_CH2_0_IPP	537
+#define IRQ_IPP_CH2_1_IPP	538
+#define IRQ_MUTE_GTNR_ALIGN_IPP	539
+#define IRQ_MUTE_IPP0_IPP	540
+#define IRQ_MUTE_IPP1_IPP	541
+#define IRQ_MUTE_IPP2_IPP	542
+#define IRQ_PPMU_IPP_UPPER_OR_NORMAL_IPP	543
+#define IRQ_PPMU_MSA_UPPER_OR_NORMAL_IPP	544
+#define IRQ_SYSMMU_IPP_S1_NS_IPP	545
+#define IRQ_SYSMMU_IPP_S1_S_IPP	546
+#define IRQ_SYSMMU_IPP_S2_IPP	547
+#define IRQ_TNR_A_IPP	548
+#define IRQ_C2COM_MCSC_MCSC	549
+#define IRQ_C2R_MCSC_MCSC	550
+#define IRQ_ITSC_NonSecu_Mute_MCSC	551
+#define IRQ_ITSC_OTF0_MCSC	552
+#define IRQ_MCSC_NonSecu_Mute_MCSC	553
+#define IRQ_MCSC_OTF0_MCSC	554
+#define IRQ_PPMU_D0_ITSC_UPPER_OR_NORMAL_MCSC	555
+#define IRQ_PPMU_D0_MCSC_UPPER_OR_NORMAL_MCSC	556
+#define IRQ_PPMU_D1_ITSC_UPPER_OR_NORMAL_MCSC	557
+#define IRQ_PPMU_D1_MCSC_UPPER_OR_NORMAL_MCSC	558
+#define IRQ_SYSMMU_D0_MCSC_S1_NS_MCSC	559
+#define IRQ_SYSMMU_D0_MCSC_S1_S_MCSC	560
+#define IRQ_SYSMMU_D0_MCSC_S2_MCSC	561
+#define IRQ_SYSMMU_D1_MCSC_S1_NS_MCSC	562
+#define IRQ_SYSMMU_D1_MCSC_S1_S_MCSC	563
+#define IRQ_SYSMMU_D1_MCSC_S2_MCSC	564
+#define IRQ_SYSMMU_D2_MCSC_S1_NS_MCSC	565
+#define IRQ_SYSMMU_D2_MCSC_S1_S_MCSC	566
+#define IRQ_SYSMMU_D2_MCSC_S2_MCSC	567
+#define IRQ_MFC_MFC	568
+#define IRQ_PPMU_D0_MFC_interrupt_upper_or_normal_MFC	569
+#define IRQ_PPMU_D1_MFC_interrupt_upper_or_normal_MFC	570
+#define IRQ_SYSMMU_D0_MFC_interrupt_s1_ns_MFC	571
+#define IRQ_SYSMMU_D0_MFC_interrupt_s1_s_MFC	572
+#define IRQ_SYSMMU_D0_MFC_interrupt_s2_MFC	573
+#define IRQ_SYSMMU_D1_MFC_interrupt_s1_ns_MFC	574
+#define IRQ_SYSMMU_D1_MFC_interrupt_s1_s_MFC	575
+#define IRQ_SYSMMU_D1_MFC_interrupt_s2_MFC	576
+#define IRQ_DMC_APBACCESSINT_MIF0	577
+#define IRQ_DMC_ECC_CORERR_MIF0	578
+#define IRQ_DMC_ECC_UNCORERR_MIF0	579
+#define IRQ_DMC_PPMPINT_MIF0	580
+#define IRQ_DMC_SWZQ0_MIF0	581
+#define IRQ_DMC_SWZQ1_MIF0	582
+#define IRQ_DMC_TEMPERR_MIF0	583
+#define IRQ_DMC_TEMPHOT_MIF0	584
+#define IRQ_DMC_TZCINT_MIF0	585
+#define IRQ_DMC_APBACCESSINT_MIF1	586
+#define IRQ_DMC_ECC_CORERR_MIF1	587
+#define IRQ_DMC_ECC_UNCORERR_MIF1	588
+#define IRQ_DMC_PPMPINT_MIF1	589
+#define IRQ_DMC_SWZQ0_MIF1	590
+#define IRQ_DMC_SWZQ1_MIF1	591
+#define IRQ_DMC_TEMPERR_MIF1	592
+#define IRQ_DMC_TEMPHOT_MIF1	593
+#define IRQ_DMC_TZCINT_MIF1	594
+#define IRQ_DMC_APBACCESSINT_MIF2	595
+#define IRQ_DMC_ECC_CORERR_MIF2	596
+#define IRQ_DMC_ECC_UNCORERR_MIF2	597
+#define IRQ_DMC_PPMPINT_MIF2	598
+#define IRQ_DMC_SWZQ0_MIF2	599
+#define IRQ_DMC_SWZQ1_MIF2	600
+#define IRQ_DMC_TEMPERR_MIF2	601
+#define IRQ_DMC_TEMPHOT_MIF2	602
+#define IRQ_DMC_TZCINT_MIF2	603
+#define IRQ_DMC_APBACCESSINT_MIF3	604
+#define IRQ_DMC_ECC_CORERR_MIF3	605
+#define IRQ_DMC_ECC_UNCORERR_MIF3	606
+#define IRQ_DMC_PPMPINT_MIF3	607
+#define IRQ_DMC_SWZQ0_MIF3	608
+#define IRQ_DMC_SWZQ1_MIF3	609
+#define IRQ_DMC_TEMPERR_MIF3	610
+#define IRQ_DMC_TEMPHOT_MIF3	611
+#define IRQ_DMC_TZCINT_MIF3	612
+#define IRQ_PDP_MUTE0_PDP	613
+#define IRQ_PDP_MUTE1_PDP	614
+#define IRQ_PDP_MUTE2_PDP	615
+#define IRQ_PDP_TOP0_PDP	616
+#define IRQ_PDP_TOP1_PDP	617
+#define IRQ_PDP_TOP2_PDP	618
+#define IRQ_PDP_TOP3_PDP	619
+#define IRQ_PDP_TOP4_PDP	620
+#define IRQ_PDP_TOP5_PDP	621
+#define IRQ_PPMU_VRA_UPPER_OR_NORMAL_PDP	622
+#define IRQ_SSMT_VRA_PDP	623
+#define IRQ_VRA_PDP	624
+#define IRQ_GPIO_PERIC0_PERIC0	625
+#define IRQ_I3C1_PERIC0	626
+#define IRQ_I3C2_PERIC0	627
+#define IRQ_I3C3_PERIC0	628
+#define IRQ_I3C4_PERIC0	629
+#define IRQ_I3C5_PERIC0	630
+#define IRQ_I3C6_PERIC0	631
+#define IRQ_I3C7_PERIC0	632
+#define IRQ_I3C8_PERIC0	633
+#define IRQ_USI0_UART_PERIC0	634
+#define IRQ_USI1_USI_PERIC0	635
+#define IRQ_USI2_USI_PERIC0	636
+#define IRQ_USI3_USI_PERIC0	637
+#define IRQ_USI4_USI_PERIC0	638
+#define IRQ_USI5_USI_PERIC0	639
+#define IRQ_USI6_USI_PERIC0	640
+#define IRQ_USI7_USI_PERIC0	641
+#define IRQ_USI8_USI_PERIC0	642
+#define IRQ_USI14_USI_PERIC0	643
+#define IRQ_GPIO_PERIC1_PERIC1	644
+#define IRQ_I3C0_PERIC1	645
+#define IRQ_PWM0_PERIC1	646
+#define IRQ_PWM1_PERIC1	647
+#define IRQ_PWM2_PERIC1	648
+#define IRQ_PWM3_PERIC1	649
+#define IRQ_PWM4_PERIC1	650
+#define IRQ_USI0_USI_PERIC1	651
+#define IRQ_USI9_USI_PERIC1	652
+#define IRQ_USI10_USI_PERIC1	653
+#define IRQ_USI11_USI_PERIC1	654
+#define IRQ_USI12_USI_PERIC1	655
+#define IRQ_USI13_USI_PERIC1	656
+#define IRQ_PPMU_D0_TNR_UPPER_OR_NORMAL_TNR	657
+#define IRQ_PPMU_D1_TNR_UPPER_OR_NORMAL_TNR	658
+#define IRQ_PPMU_D2_TNR_UPPER_OR_NORMAL_TNR	659
+#define IRQ_PPMU_D3_TNR_UPPER_OR_NORMAL_TNR	660
+#define IRQ_PPMU_D4_TNR_UPPER_OR_NORMAL_TNR	661
+#define IRQ_PPMU_D5_TNR_UPPER_OR_NORMAL_TNR	662
+#define IRQ_PPMU_D6_TNR_UPPER_OR_NORMAL_TNR	663
+#define IRQ_PPMU_D7_TNR_UPPER_OR_NORMAL_TNR	664
+#define IRQ_SYSMMU_D0_TNR_S1_NS_TNR	665
+#define IRQ_SYSMMU_D0_TNR_S1_S_TNR	666
+#define IRQ_SYSMMU_D0_TNR_S2_TNR	667
+#define IRQ_SYSMMU_D1_TNR_S1_NS_TNR	668
+#define IRQ_SYSMMU_D1_TNR_S1_S_TNR	669
+#define IRQ_SYSMMU_D1_TNR_S2_TNR	670
+#define IRQ_SYSMMU_D2_TNR_S1_NS_TNR	671
+#define IRQ_SYSMMU_D2_TNR_S1_S_TNR	672
+#define IRQ_SYSMMU_D2_TNR_S2_TNR	673
+#define IRQ_SYSMMU_D3_TNR_S1_NS_TNR	674
+#define IRQ_SYSMMU_D3_TNR_S1_S_TNR	675
+#define IRQ_SYSMMU_D3_TNR_S2_TNR	676
+#define IRQ_SYSMMU_D4_TNR_S1_NS_TNR	677
+#define IRQ_SYSMMU_D4_TNR_S1_S_TNR	678
+#define IRQ_SYSMMU_D4_TNR_S2_TNR	679
+#define IRQ_TNR_TNR	680
+#define IRQ_TNR_MUTE_TNR	681
+#define IRQ_DDD_IRQ_0_TPU	682
+#define IRQ_DDD_IRQ_1_TPU	683
+#define IRQ_DDD_IRQ_2_TPU	684
+#define IRQ_DDD_IRQ_3_TPU	685
+#define IRQ_HPM_IRQ_TPU	686
+#define IRQ_NS_TPU_TPU	687
+#define IRQ_PPMU_UPPER_OR_NORMAL_TPU	688
+#define IRQ_S_TPU_TPU	689
+#define IRQ_SSMT_TPU_TPU	690
+#define IRQ_SYSMMU_S1_NS_TPU_TPU	691
+#define IRQ_SYSMMU_S1_S_TPU_TPU	692
+#define IRQ_SYSMMU_S2_TPU_TPU	693
+#define IRQ_OTP_CON_TOP_MISC	752
+#define IRQ_MCT_G0_MISC	753
+#define IRQ_MCT_G1_MISC	754
+#define IRQ_MCT_G2_MISC	755
+#define IRQ_MCT_G3_MISC	756
+#define IRQ_MCT_L0_MISC	757
+#define IRQ_MCT_L1_MISC	758
+#define IRQ_MCT_L2_MISC	759
+#define IRQ_MCT_L3_MISC	760
+#define IRQ_MCT_L4_MISC	761
+#define IRQ_MCT_L5_MISC	762
+#define IRQ_MCT_L6_MISC	763
+#define IRQ_MCT_L7_MISC	764
+#define IRQ_WDT_CLUSTER0_MISC	765
+#define IRQ_WDT_CLUSTER1_MISC	766
+#define IRQ_OTP_CON_BISR_MISC	767
+#define IRQ_OTP_CON_BIRA_MISC	768
+#define IRQ_TMU_TMU_TOP_MISC	769
+#define IRQ_TMU_TMU_SUB_MISC	770
+#define IRQ_SPDMA_MISC	771
+#define IRQ_PDMA_MISC	772
+#define IRQ_PPMU_DMA_0_MISC	773
+#define IRQ_PPMU_DMA_1_MISC	774
+#define IRQ_PPMU_DMA_2_MISC	775
+#define IRQ_PPMU_DMA_3_MISC	776
+#define IRQ_PPMU_DMA_IRQ_ABORT_MISC	777
+#define IRQ_SSS_MISC	778
+#define IRQ_SSS_NS_MB_MISC	779
+#define IRQ_SSS_S_MB_MISC	780
+#define IRQ_SSS_KM_MISC	781
+#define IRQ_SSS_DMAINT_MISC	782
+#define IRQ_SSS_SWDT1_MISC	783
+#define IRQ_SSS_SWDT2_MISC	784
+#define IRQ_PUF_SEC_MISC	785
+#define IRQ_PUF_UNCOREECT_MISC	786
+#define IRQ_RTIC_MISC	787
+#define IRQ_DIT_RxDst0_MISC	788
+#define IRQ_DIT_RxDst1_MISC	789
+#define IRQ_DIT_RxDst2_MISC	790
+#define IRQ_DIT_Tx_MISC	791
+#define IRQ_DIT_Err_MISC	792
+#define IRQ_PPMU_MISC_UPPER_OR_NORMAL_MISC	793
+#define IRQ_SYSMMU_NS_SSS_MISC	794
+#define IRQ_SYSMMU_S_SSS_MISC	795
+#define IRQ_SYSMMU_S2_MISC_MISC	796
+#define IRQ_GIC_FAULT_MISC	797
+#define IRQ_GIC_ERR_MISC	798
+#define IRQ_GIC_PMU_MISC	799
+
+#endif/*_DT_BINDINGS_INTERRUPT_CONTROLLER_GS101_H*/
-- 
2.42.0.582.g8ccd20d70d-goog


