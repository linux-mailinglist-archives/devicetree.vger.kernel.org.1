Return-Path: <devicetree+bounces-13433-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C2877DE177
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 14:27:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7F4BB281272
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 13:27:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7847134A4;
	Wed,  1 Nov 2023 13:27:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F338411CBF
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 13:27:11 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id BBBC3F7;
	Wed,  1 Nov 2023 06:27:10 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0C02D2F4;
	Wed,  1 Nov 2023 06:27:52 -0700 (PDT)
Received: from ewhatever.cambridge.arm.com (ewhatever.cambridge.arm.com [10.1.197.1])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id B83703F64C;
	Wed,  1 Nov 2023 06:27:07 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
	Konrad Dybcio <konradybcio@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Tao Zhang <quic_taozha@quicinc.com>,
	Rob Herring <robh+dt@kernel.org>,
	Mike Leach <mike.leach@linaro.org>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
	andersson@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	Yuanfang Zhang <quic_yuanfang@quicinc.com>,
	Jinlong Mao <quic_jinlmao@quicinc.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Song Chai <quic_songchai@quicinc.com>,
	Trilok Soni <quic_tsoni@quicinc.com>,
	linux-arm-kernel@lists.infradead.org,
	Leo Yan <leo.yan@linaro.org>,
	Tingwei Zhang <quic_tingweiz@quicinc.com>,
	coresight@lists.linaro.org
Subject: Re: [PATCH v1] coresight-tpdm: Correct the property name of MSR number
Date: Wed,  1 Nov 2023 13:26:59 +0000
Message-Id: <169884518439.1280348.11104684783715031934.b4-ty@arm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <1698128353-31157-1-git-send-email-quic_taozha@quicinc.com>
References: <1698128353-31157-1-git-send-email-quic_taozha@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Tue, 24 Oct 2023 14:19:13 +0800, Tao Zhang wrote:
> Correct the property name of the DSB MSR number that needs to be
> read in TPDM driver. The right property name is
> "qcom,dsb-msrs-num".
> 
> Fixes： 90a7371cb08d ("coresight-tpdm: Add nodes for dsb msr support")
> 
> 
> [...]

Applied, thanks!

[1/1] coresight-tpdm: Correct the property name of MSR number
      https://git.kernel.org/coresight/c/20234c51cca7

Best regards,
-- 
Suzuki K Poulose <suzuki.poulose@arm.com>

