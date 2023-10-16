Return-Path: <devicetree+bounces-9058-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C27AD7CB6C1
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 00:56:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7AF16281587
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 22:56:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5E5338FAA;
	Mon, 16 Oct 2023 22:56:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81DAE381B4
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 22:56:05 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 0FA6DB4;
	Mon, 16 Oct 2023 15:56:03 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7DB6A1FB;
	Mon, 16 Oct 2023 15:56:43 -0700 (PDT)
Received: from ewhatever.cambridge.arm.com (ewhatever.cambridge.arm.com [10.1.197.1])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 732AB3F64C;
	Mon, 16 Oct 2023 15:56:00 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Mike Leach <mike.leach@linaro.org>,
	Tao Zhang <quic_taozha@quicinc.com>,
	Konrad Dybcio <konradybcio@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
	coresight@lists.linaro.org,
	andersson@kernel.org,
	Yuanfang Zhang <quic_yuanfang@quicinc.com>,
	Tingwei Zhang <quic_tingweiz@quicinc.com>,
	devicetree@vger.kernel.org,
	Trilok Soni <quic_tsoni@quicinc.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	Hao Zhang <quic_hazha@quicinc.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jinlong Mao <quic_jinlmao@quicinc.com>,
	Leo Yan <leo.yan@linaro.org>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v10 00/13] Add support to configure TPDM DSB subunit
Date: Mon, 16 Oct 2023 23:55:36 +0100
Message-Id: <169749645670.708996.15857660455300716128.b4-ty@arm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <1695882586-10306-1-git-send-email-quic_taozha@quicinc.com>
References: <1695882586-10306-1-git-send-email-quic_taozha@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Thu, 28 Sep 2023 14:29:33 +0800, Tao Zhang wrote:
> Introduction of TPDM DSB subunit
> DSB subunit is responsible for creating a dataset element, and is also
> optionally responsible for packing it to fit multiple elements on a
> single ATB transfer if possible in the configuration. The TPDM Core
> Datapath requests timestamps be stored by the TPDA and then delivering
> ATB sized data (depending on ATB width and element size, this could
> be smaller or larger than a dataset element) to the ATB Mast FSM.
> 
> [...]

Applied, thanks!

[01/13] coresight-tpdm: Remove the unnecessary lock
        https://git.kernel.org/coresight/c/5d49aeb1b3e4
[02/13] dt-bindings: arm: Add support for DSB element size
        https://git.kernel.org/coresight/c/a1ce72d22a2e
[03/13] coresight-tpdm: Introduce TPDM subtype to TPDM driver
        https://git.kernel.org/coresight/c/6b4fad1b665a
[04/13] coresight-tpda: Add DSB dataset support
        https://git.kernel.org/coresight/c/18e176f77986
[05/13] coresight-tpdm: Initialize DSB subunit configuration
        https://git.kernel.org/coresight/c/03f0ff5fcbec
[06/13] coresight-tpdm: Add reset node to TPDM node
        https://git.kernel.org/coresight/c/126f00822388
[07/13] coresight-tpdm: Add nodes to set trigger timestamp and type
        https://git.kernel.org/coresight/c/c821b93bb6eb
[08/13] coresight-tpdm: Add node to set dsb programming mode
        https://git.kernel.org/coresight/c/535d80d3c10f
[09/13] coresight-tpdm: Add nodes for dsb edge control
        https://git.kernel.org/coresight/c/dd60b994b3f8
[10/13] coresight-tpdm: Add nodes to configure pattern match output
        https://git.kernel.org/coresight/c/5898244cf458
[11/13] coresight-tpdm: Add nodes for timestamp request
        https://git.kernel.org/coresight/c/949a4f5b66d2
[12/13] dt-bindings: arm: Add support for DSB MSR register
        https://git.kernel.org/coresight/c/20dab0f44ac8
[13/13] coresight-tpdm: Add nodes for dsb msr support
        https://git.kernel.org/coresight/c/90a7371cb08d

Best regards,
-- 
Suzuki K Poulose <suzuki.poulose@arm.com>

