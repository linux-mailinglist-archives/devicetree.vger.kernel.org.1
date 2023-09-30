Return-Path: <devicetree+bounces-4775-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 042A37B3F93
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 11:03:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id A2B13281D65
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 09:02:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD6BD23AD;
	Sat, 30 Sep 2023 09:02:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 562D617ED
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 09:02:55 +0000 (UTC)
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF4371A5
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 02:02:53 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-99c1c66876aso2049282466b.2
        for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 02:02:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696064572; x=1696669372; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Q0hizBBm4A8wjMZ1piqiDjr9gInhzk36CKnQSjY0ZpQ=;
        b=MqgondFe0Uu0H3HEYZgqefdjdyxZdyTjT8y55ZkDMsPO7kMFgwLJFQf7jFHPA4wdFh
         X5pfb2tqwIXV0KH4PgZtqU/nohpYPdztpZAuRxFcccPjqGWff0DtXISQB90S3uJb6yKJ
         HGHXSeLFtNQkXNl1aUFzrCWXS6yQUKLnnutEQ+p5m29WHGggzxM4lVN5yR8awvE/N8aY
         RNRTMdN+RuAWSP4GuiSYKUywLhpiPQaoaEt2YZJTL9FtHDCDmakBNzVE3WcibXF5n4Td
         +zAAn7DmmJr1ggvmOqY1fcW15B8skqc85IUp/I74rechxAgdBaS40C5lg/+6t9C+brtW
         NyaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696064572; x=1696669372;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Q0hizBBm4A8wjMZ1piqiDjr9gInhzk36CKnQSjY0ZpQ=;
        b=nqf1ZXXb2rqRKit4AcAQ3wq7FlZJ2ZlMA/Lo1TbHG/ac2Ah9faQekZGpPclkYTfydo
         zdDpCYQLmCuL2v6jMVfGrwfS+knwDBk3CyJCjUlDe9uE+bjUwLZQLLuM7vH3q1f/UHMH
         YCn8CLIyK6ykAFwxiBb/IB0H1AXIB55yrTf7rW5EwbBGx1grv+accUO7h8VpfJEpzya4
         xkXhdrXZ7k4Og/ViIx318P+5fixWGEeYwJpfjGEeG1OwnSKd81g29kYy3lHMCqDul6IM
         PwIT10PBez/TIFlSDI6UrbzSMla97AcSevnp0DzkmSUBSMCF4ulMoIyLrmqO/3WqgUzt
         8IFA==
X-Gm-Message-State: AOJu0Yyj/3XVPqfmxhnKSBwlp23Jx1D/FLO1/9uiwQMZRl0IK3jEOIrM
	WFhhH2G7UJrVUoLgA5I7XMR4
X-Google-Smtp-Source: AGHT+IHr952WuR/z5EU6Gyhdfd/SNEYlnNbdjLVbmblbMVw53N3v3z8rJmOSwHR0BANmLPzAn2RjbA==
X-Received: by 2002:a17:907:985b:b0:9ae:6a08:6f53 with SMTP id jj27-20020a170907985b00b009ae6a086f53mr5637893ejc.63.1696064572153;
        Sat, 30 Sep 2023 02:02:52 -0700 (PDT)
Received: from thinkpad ([88.128.88.98])
        by smtp.gmail.com with ESMTPSA id bv13-20020a170906b1cd00b00993a37aebc5sm13708153ejb.50.2023.09.30.02.02.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Sep 2023 02:02:51 -0700 (PDT)
Date: Sat, 30 Sep 2023 11:02:49 +0200
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Frank Li <Frank.li@nxp.com>
Cc: aisheng.dong@nxp.com, bhelgaas@google.com, devicetree@vger.kernel.org,
	festevam@gmail.com, imx@lists.linux.dev, jdmason@kudzu.us,
	kernel@pengutronix.de, kishon@kernel.org, kw@linux.com,
	linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	lorenzo.pieralisi@arm.com, lpieralisi@kernel.org, maz@kernel.org,
	s.hauer@pengutronix.de, shawnguo@kernel.org, tglx@linutronix.de
Subject: Re: [PATCH v2 0/5] Add RC-to-EP doorbell with platform MSI controller
Message-ID: <20230930090249.GB3564@thinkpad>
References: <20230911220920.1817033-1-Frank.Li@nxp.com>
 <ZQtmpL2vCMgR+Upu@lizhi-Precision-Tower-5810>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZQtmpL2vCMgR+Upu@lizhi-Precision-Tower-5810>
X-Spam-Status: No, score=0.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SORTED_RECIPS,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, Sep 20, 2023 at 05:39:48PM -0400, Frank Li wrote:
> On Mon, Sep 11, 2023 at 06:09:15PM -0400, Frank Li wrote:
> > ┌────────────┐   ┌───────────────────────────────────┐   ┌────────────────┐
> > │            │   │                                   │   │                │
> > │            │   │ PCI Endpoint                      │   │ PCI Host       │
> > │            │   │                                   │   │                │
> > │            │◄──┤ 1.platform_msi_domain_alloc_irqs()│   │                │
> > │            │   │                                   │   │                │
> > │ MSI        ├──►│ 2.write_msi_msg()                 ├──►├─BAR<n>         │
> > │ Controller │   │   update doorbell register address│   │                │
> > │            │   │   for BAR                         │   │                │
> > │            │   │                                   │   │ 3. Write BAR<n>│
> > │            │◄──┼───────────────────────────────────┼───┤                │
> > │            │   │                                   │   │                │
> > │            ├──►│ 4.Irq Handle                      │   │                │
> > │            │   │                                   │   │                │
> > │            │   │                                   │   │                │
> > └────────────┘   └───────────────────────────────────┘   └────────────────┘
> 
> @mani:
> 	Do you have chance to review this patch again?

I was on vacation for past few weeks. Will take a look in the coming week.

- Mani

> 
> Frank
> 
> > 
> > This patches based on old https://lore.kernel.org/imx/20221124055036.1630573-1-Frank.Li@nxp.com/
> > 
> > Original patch only target to vntb driver. But actually it is common
> > method.
> > 
> > This patches add new API to pci-epf-core, so any EP driver can use it.
> > 
> > The key point is comments from Thomas Gleixner, who suggest use new
> > PCI/IMS. But arm platform change still not be merged yet.
> > 
> > git://git.kernel.org/pub/scm/linux/kernel/git/tglx/devel.git devmsi-v2-arm
> > 
> > So I still use existed method implement RC to EP doorbell.
> > 
> > If Thomas Gleixner want to continue work on devmsi-v2-arm, I can help test
> > and update this patch.
> > 
> > Change from v1 to v2
> > - Add missed patch for endpont/pci-epf-test.c
> > - Move alloc and free to epc driver from epf.
> > - Provide general help function for EPC driver to alloc platform msi irq.
> > - Fixed manivannan's comments.
> > 
> > Frank Li (5):
> >   PCI: endpoint: Add RC-to-EP doorbell support using platform MSI
> >     controller
> >   PCI: dwc: add doorbell support by use MSI controller
> >   PCI: endpoint: pci-epf-test: add doorbell test
> >   misc: pci_endpoint_test: Add doorbell test case
> >   tools: PCI: Add 'B' option for test doorbell
> > 
> >  drivers/misc/pci_endpoint_test.c              |  48 +++++
> >  .../pci/controller/dwc/pcie-designware-ep.c   |   2 +
> >  drivers/pci/endpoint/functions/pci-epf-test.c |  59 +++++-
> >  drivers/pci/endpoint/pci-epc-core.c           | 192 ++++++++++++++++++
> >  drivers/pci/endpoint/pci-epf-core.c           |  44 ++++
> >  include/linux/pci-epc.h                       |   6 +
> >  include/linux/pci-epf.h                       |   7 +
> >  include/uapi/linux/pcitest.h                  |   1 +
> >  tools/pci/pcitest.c                           |  16 +-
> >  9 files changed, 373 insertions(+), 2 deletions(-)
> > 
> > -- 
> > 2.34.1
> > 

-- 
மணிவண்ணன் சதாசிவம்

