Return-Path: <devicetree+bounces-3850-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 734ED7B041F
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 14:28:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 25EAE28259C
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 12:28:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8E8B28DAD;
	Wed, 27 Sep 2023 12:28:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99CB0241FC
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 12:28:54 +0000 (UTC)
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77C5A12A;
	Wed, 27 Sep 2023 05:28:53 -0700 (PDT)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 38RCSl82038661;
	Wed, 27 Sep 2023 07:28:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1695817727;
	bh=kpGv4yviBFiv3jDn0Nsp/s5B6ZpDCik8xDM9KmbC7A8=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=I+o3hnfzmlncG62TGV3AQJQ+jYnezeeCJh5T0jfvPuHQs29nC7E/MUMXscwupzOir
	 sB5QLr9fdIhSIYDv48lZ9bUNyf18nvNvKaZfi+GGgeRAMOZcGz3YKdmdBsbNLe+NrH
	 1wdPVwb06h/Vz/ivUkpQbMHw+fpTr2pKjhT89lus=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 38RCSl4Y033798
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 27 Sep 2023 07:28:47 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 27
 Sep 2023 07:28:47 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 27 Sep 2023 07:28:47 -0500
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 38RCSlDV053432;
	Wed, 27 Sep 2023 07:28:47 -0500
Date: Wed, 27 Sep 2023 07:28:47 -0500
From: Nishanth Menon <nm@ti.com>
To: "Kumar, Udit" <u-kumar1@ti.com>
CC: Apurva Nandan <a-nandan@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero Kristo <kristo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, Hari Nagalla
	<hnagalla@ti.com>
Subject: Re: [PATCH v4 0/9] Add R5F and C7x DSP node for K3 J721S2, AM68 and
 AM69 SoCs
Message-ID: <20230927122847.jslgzitgcesnv5ik@gangway>
References: <20230906112422.2846151-1-a-nandan@ti.com>
 <ff0fabf8-8f55-4d91-04ee-7581efc465d6@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ff0fabf8-8f55-4d91-04ee-7581efc465d6@ti.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 14:24-20230927, Kumar, Udit wrote:
> 
> On 9/6/2023 4:54 PM, Apurva Nandan wrote:
> > This series adds the R5F processor nodes and C7x DSP nodes for
> > J721S2, AM68 and AM69 SoCs to align these nodes with other K3 SOC's node.
> > 
> > The first three patches adds the remote proc nodes to the SoC device
> > tree, remaining patches reserves the memory for remote proc IPCs
> > on K3 J721S2 EVM, AM68 SK, AM69 boards.
> > 
> > Note, K3 AM69 SoC derives from K3 J784S4 SoC, but is included in this
> > series as it was originally missed in the K3 J784S4 EVM rproc series.
> > (https://lore.kernel.org/all/20230502231527.25879-4-hnagalla@ti.com/).
> > 
> > kpv log: https://gist.githubusercontent.com/apurvanandan1997/57fcf127c118a48bd174ce36d8840329/raw/
> > Test log: https://gist.githubusercontent.com/apurvanandan1997/556b4148651ae74b50dda993ad07f1e5/raw/
> 
> You need to rebase the series
> 
> For patches 6/9, 7/9, 8/9 and 9/9
> 
> Reviewed by: Udit Kumar <u-kumar1@ti.com>

Please provide reviewed by for the exact patches than expecting
maintainers to pick the reviewed bys.

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D

