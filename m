Return-Path: <devicetree+bounces-1848-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E37427A89DD
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 18:58:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9F953282156
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 16:58:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 473673E48A;
	Wed, 20 Sep 2023 16:58:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3824479EE
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 16:58:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA0DCC433D9;
	Wed, 20 Sep 2023 16:58:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695229104;
	bh=Ck7L7SaEpfHsqGu9D/bRu3QFPIxneAy3tqqGqLYnVE0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=GfZqENRBZeHFsGuIZoCEhc7NIQgOz61AYSjGZLnJApRBgkG8qFeuGkMxxiV4IaVCu
	 Vyq4l34io6LPGU6U/193O6ppgSu81yrRe7sIiagtUNgalvrS7SGvjMAMvoJeY3WiWb
	 +jbkj2j+SobueldkBVmKPuod/lisdPoRsO/lUscl+6HgMCzsfxelUuf9UgeNsm11ed
	 WdJ3VTAt63mUmFvjkidmV+L/WEH22bwlMlpNrsdxVVdvauTSfEUj31lkluHKczvboV
	 VJtHWgjDSJ1vlIVLjar4Z2zKnV/Ld5+iFid2M8UmdNq8Sw0nZFU0IZbqW+LwgxKNg4
	 0AWiptDzEtigw==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
	linux-arm-msm@vger.kernel.org,
	linux-remoteproc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 0/3] SM6375 remoteprocs
Date: Wed, 20 Sep 2023 10:02:28 -0700
Message-ID: <169522934570.2501390.16587798037129416610.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230725-topic-6375_rproc-v5-0-a8e9cde56a20@linaro.org>
References: <20230725-topic-6375_rproc-v5-0-a8e9cde56a20@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Thu, 27 Jul 2023 19:33:20 +0200, Konrad Dybcio wrote:
> Resending as the previous revision was mostly ignored on the rproc side.
> 
> Changes since v3:
> - Pick up krzk's rb on bindings
> - Drop patch 4 (applied)
> Link to v3: https://lore.kernel.org/linux-arm-msm/20230109135647.339224-1-konrad.dybcio@linaro.org/
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: remoteproc: qcom,sm6375-pas: Document remoteprocs
      commit: 6d3211e015b0f236986b16c042f71cce8d36d727
[2/3] remoteproc: qcom: pas: Add SM6375 ADSP & CDSP
      commit: a6df21cf0c93cab57059e2592c7c99b424965374
[3/3] remoteproc: qcom: pas: Add SM6375 MPSS
      commit: 93f875645c9da9c788224964499e68fa9664e80f

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

