Return-Path: <devicetree+bounces-7993-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB0B7C6688
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 09:40:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4586F1C20B85
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 07:40:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F25FFC1A;
	Thu, 12 Oct 2023 07:40:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HDtVHuCf"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97E91DF49
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 07:40:12 +0000 (UTC)
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com [IPv6:2607:f8b0:4864:20::435])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F85FDA
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 00:40:10 -0700 (PDT)
Received: by mail-pf1-x435.google.com with SMTP id d2e1a72fcca58-6969b391791so528527b3a.3
        for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 00:40:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697096409; x=1697701209; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=t0g3CHLupMrDhHkMlK6gfozlJQHBhX7jZYJ+e0keXWk=;
        b=HDtVHuCftKxdgE/BPt0LBE9bFa1rKgr8eVqNClDcuKPHzaslCm+Yt5KQSaicOIhuCx
         eq38bVojnj8VO69LgmZHEtJOY1djbZjOc/q7bRtS+xfb/ZOTtplBA2EQFp6iaULa/vqJ
         SFnEOajDtrMUMld4MOjWyDtnKwwK+NkOzxi5tpSzueiHA9/D17qJ6POm/bYbavYodpRt
         ypx5ns3frbzKMY6F3SDi/mh25/xZdmKtUW12WdpzT93T+wLYNdVSJvP0RsndMnJmzbLi
         mR5eJvSJ8CfCNZsHqZdNwZ9CRnv7PD8znJlUvBhOnPHvpqkvCvfDLJQB/X+mE6XvqqnI
         EfVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697096409; x=1697701209;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=t0g3CHLupMrDhHkMlK6gfozlJQHBhX7jZYJ+e0keXWk=;
        b=H256HdNLE7xuKTBR9rPJOzS1Hcxt0Rez0lBw5LNmiLfZ3R4G3Oi4iLFVD5UnOPKZeE
         HIid6x0Z6p2/dPh0VFmmlezssnDRhhhA+SP52B5P/7w8dN8W3L6t0r61QleAECC4kIK8
         i18rQCXfzLfd4LKYqWQJRXxpXlBs8oJCVNLIIFC3c2MDFDWJoOVW1i+wefLTWrFDC2XP
         nKN3rp24jEc7xI8kRNXDSlGnoXscIWyie4DghLcpUzXaOLCC/8B2KK3+tbFs+5rCM9Pb
         EiVVdnjMpACgtMelSnKkYucPCTAbhhrPnGsNXPnNvg0e2lyk+doCia1szcF7vdxu3Qfy
         wGLQ==
X-Gm-Message-State: AOJu0YzciVXXTwDJl8nHo2F6zHlOVLoJrdRdXAculxYR3eB6kv1Oc39x
	SG3iM2GdFqMQckwvh+JdgTSx
X-Google-Smtp-Source: AGHT+IH0EXGX3kM6pYUNayPRavDSGKGosRNmNjQtofu1wwryxdfzHLf8UxV8MNlsKoohZ4oxr897Hg==
X-Received: by 2002:aa7:88ca:0:b0:68e:2af1:b193 with SMTP id k10-20020aa788ca000000b0068e2af1b193mr24429012pff.28.1697096409579;
        Thu, 12 Oct 2023 00:40:09 -0700 (PDT)
Received: from thinkpad ([120.138.12.180])
        by smtp.gmail.com with ESMTPSA id y12-20020a056a001c8c00b006a77343b0ccsm4896434pfw.89.2023.10.12.00.39.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Oct 2023 00:40:08 -0700 (PDT)
Date: Thu, 12 Oct 2023 13:09:55 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: "Alessandro Carminati (Red Hat)" <alessandro.carminati@gmail.com>
Cc: alim.akhtar@samsung.com, andersson@kernel.org, avri.altman@wdc.com,
	bmasney@redhat.com, bvanassche@acm.org, conor+dt@kernel.org,
	cw00.choi@samsung.com, devicetree@vger.kernel.org,
	jejb@linux.ibm.com, konrad.dybcio@linaro.org,
	krzysztof.kozlowski+dt@linaro.org, krzysztof.kozlowski@linaro.org,
	kyungmin.park@samsung.com, linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
	linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
	myungjoo.ham@samsung.com, nm@ti.com, quic_asutoshd@quicinc.com,
	quic_bhaskarv@quicinc.com, quic_cang@quicinc.com,
	quic_narepall@quicinc.com, quic_nguyenb@quicinc.com,
	quic_nitirawa@quicinc.com, quic_richardp@quicinc.com,
	quic_ziqichen@quicinc.com, robh+dt@kernel.org, sboyd@kernel.org,
	vireshk@kernel.org
Subject: Re: [PATCH] scsi: ufs: core: Fix build error: ufshcd_opp_config_clks
Message-ID: <20231012073955.GA14957@thinkpad>
References: <20231011122543.11922-4-manivannan.sadhasivam@linaro.org>
 <20231012072051.1517826-1-alessandro.carminati@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231012072051.1517826-1-alessandro.carminati@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Thu, Oct 12, 2023 at 07:20:51AM +0000, Alessandro Carminati (Red Hat) wrote:
> Building linux-6.6-rc3 with this patchset applied and the following
> configuration:
> 
> CONFIG_SCSI_UFSHCD=m
> CONFIG_SCSI_UFS_BSG=y
> 
> I got:
> 
>    scripts/mod/modpost -M -m -a      -o Module.symvers -T modules.order vmlinux.o
> ERROR: modpost: "ufshcd_opp_config_clks" [drivers/ufs/host/ufshcd-pltfrm.ko] undefined!
> make[2]: *** [scripts/Makefile.modpost:145: Module.symvers] Error 1
> make[1]: *** [/home/alessandro/src/linux-6.6-rc3/Makefile:1865: modpost] Error 2
> make: *** [Makefile:234: __sub-make] Error 2
> 
> I needed to add an export symbol to have the build complete
> 
> Signed-off-by: Alessandro Carminati (Red Hat) <alessandro.carminati@gmail.com>

Thanks for the diff. I will squash it with the offending patch.

- Mani

> ---
>  drivers/ufs/core/ufshcd.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/ufs/core/ufshcd.c b/drivers/ufs/core/ufshcd.c
> index ccd7fcd18355..c0631c37c3d1 100644
> --- a/drivers/ufs/core/ufshcd.c
> +++ b/drivers/ufs/core/ufshcd.c
> @@ -1098,6 +1098,7 @@ int ufshcd_opp_config_clks(struct device *dev, struct opp_table *opp_table,
>  
>  	return 0;
>  }
> +EXPORT_SYMBOL_GPL(ufshcd_opp_config_clks);
>  
>  static int ufshcd_opp_set_rate(struct ufs_hba *hba, unsigned long freq)
>  {
> -- 
> 2.34.1
> 

-- 
மணிவண்ணன் சதாசிவம்

