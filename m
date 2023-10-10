Return-Path: <devicetree+bounces-7171-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0455F7BF876
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 12:21:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B03F4281B3A
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 10:21:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E13E9179BC;
	Tue, 10 Oct 2023 10:21:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B61315AEA
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 10:21:42 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id BF965A4;
	Tue, 10 Oct 2023 03:21:40 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 427871FB;
	Tue, 10 Oct 2023 03:22:21 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id EF5C93F762;
	Tue, 10 Oct 2023 03:21:38 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: Nikunj Kela <quic_nkela@quicinc.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>,
	cristian.marussi@arm.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	andersson@kernel.org,
	konrad.dybcio@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v6 0/2] Add qcom smc/hvc transport support
Date: Tue, 10 Oct 2023 11:21:34 +0100
Message-ID: <169693319086.1604600.8500677633638384103.b4-ty@arm.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231009191437.27926-1-quic_nkela@quicinc.com>
References: <20230718160833.36397-1-quic_nkela@quicinc.com> <20231009191437.27926-1-quic_nkela@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, 09 Oct 2023 12:14:35 -0700, Nikunj Kela wrote:
> This change augments smc transport to include support for Qualcomm virtual
> platforms by passing a parameter(capability-id) in the hypervisor call to
> identify which doorbell to assert. This parameter is dynamically generated
> at runtime on the device and insuitable to pass via the devicetree.
>
> The capability-id is stored by firmware in the shmem region.
>
> [...]

Applied to sudeep.holla/linux (for-next/scmi/updates), thanks!

[1/2] dt-bindings: arm: Add new compatible for smc/hvc transport for SCMI
      https://git.kernel.org/sudeep.holla/c/6979f88f5a8e
[2/2] firmware: arm_scmi: Add qcom smc/hvc transport support
      https://git.kernel.org/sudeep.holla/c/da405477e767
--
Regards,
Sudeep


