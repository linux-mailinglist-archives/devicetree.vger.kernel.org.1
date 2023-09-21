Return-Path: <devicetree+bounces-2168-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9547E7A9CCA
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 21:24:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3C325B25E71
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:20:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 370394BDD4;
	Thu, 21 Sep 2023 18:11:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19CA84E26B
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 18:11:34 +0000 (UTC)
Received: from mo4-p02-ob.smtp.rzone.de (mo4-p02-ob.smtp.rzone.de [85.215.255.83])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B680C171F;
	Thu, 21 Sep 2023 11:11:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1695319884; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=Bam1vUcyihG1lqNc7Xs0K+o/bvAAPuEmv9n1mjtgIT8gkgBd2oX5wjpMDZWRtwYWpN
    lhlGdEARXWx7up5To7RE4H+SgdrApRCr4TWFIUwgsQbG7CyG+W9sX/e/WrPZ69tbvRuD
    cUNsApOzUhrrmSuOjTAmnVmSdi1DWOsk52aI8vTSW6totpclPdA6QmRujxlHQm5yobgD
    Q1H9+U1JEoCjK3hOZnEpZV7LsopyAR3mLLViTYLhTKq5WEsAOcW+e015ZQMFVd41ZkgS
    DF73MKS+TGRnCex96pWH0Q1cP4mUzTRECy6huWhxWZyiLlxxUcyWBTr0xR+HEghC9dG2
    Wxew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1695319884;
    s=strato-dkim-0002; d=strato.com;
    h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:Cc:Date:
    From:Subject:Sender;
    bh=ahCo3lNhh52oZdX8vz08vk15RlYtdTcqGpzjjeIwnXQ=;
    b=JdQzqBDcIbknXR3ENnTcVDwBgtjtSPdl15sG1AWpGIDFojGHFXAwi46V3WFi02Sv0F
    nNllnVStiYoutkSMPWpDnKXIy3PSuzNSovGo3GV6i70Q3xk/UoyJXe5sTbjDUQO96Bae
    LXzWadMBKrjikaUuET81tFL4CCNaTJLlEpMU7Zd8QAbbPqL0Lf5pDsas2ufdmR+LUL03
    Z8LiiXDTn5GaOC2uqmApKnYRYIvLTxVXUKaNCG5DmBJebL8FgD7d37y1+bzwi5JZuI7t
    0x4PgEIzzlPMTzRTQkoUZi1jlqZ0yaGQNOz9Dpysqzy3rSJuu+M5Ex23hcJEHV3vqcOz
    2GpQ==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo02
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1695319884;
    s=strato-dkim-0002; d=gerhold.net;
    h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:Cc:Date:
    From:Subject:Sender;
    bh=ahCo3lNhh52oZdX8vz08vk15RlYtdTcqGpzjjeIwnXQ=;
    b=o1pHRFnAhQYP/bv6DCSPKMbluR//9glDgxihI3Fqlu14ES1ieJJAhUjTJ3oogBKx8m
    JNNlfnBvfQvkXoZU9sTPirSq4lAdk5Z5gPQGIj5pTe2m42y0UqcCjMzsuRh32DHBJVYq
    zmkWDhHLYrpJAYaDmLoCTygHFtYWkI5BjKsfGM4ngbG2LvCW27LYbM9lniVFLki1d9EE
    k82ZQf+5t3Q0mq4V5h6zFHJa5/YEreZJWNaHcAm1ybZ1cUVUGFKZ2HTIihNCFlK6gRc2
    tmmAvnVOLlGYFckcZgpoFD7FGwsasSr5Vs6JChwIO+slxPNVwRDirBYuc7xHP1UYu4P2
    S/AQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1695319884;
    s=strato-dkim-0003; d=gerhold.net;
    h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:Cc:Date:
    From:Subject:Sender;
    bh=ahCo3lNhh52oZdX8vz08vk15RlYtdTcqGpzjjeIwnXQ=;
    b=mzvBxC8X+dLe3lq7Uh7SgDGQuHNe9pNjCKzBNs/ommsuRxvrqxeEMMDTrVityLikS7
    dwt+HNqY2pbDN42MTnAg==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQ/OcYgojyw4j34+u261EJF5OxJD4peA8Z+P1A=="
Received: from gerhold.net
    by smtp.strato.de (RZmta 49.8.2 DYNA|AUTH)
    with ESMTPSA id R04c57z8LIBORNe
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
	(Client did not present a certificate);
    Thu, 21 Sep 2023 20:11:24 +0200 (CEST)
Date: Thu, 21 Sep 2023 20:11:23 +0200
From: Stephan Gerhold <stephan@gerhold.net>
To: Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Caleb Connolly <caleb.connolly@linaro.org>
Subject: Re: [PATCH v3 3/3] soc: qcom: rtmfs: Handle reserved-memory
 allocation issues
Message-ID: <ZQyHS__ZPlnvMIFo@gerhold.net>
References: <20230920-rmtfs-mem-guard-pages-v3-0-305b37219b78@quicinc.com>
 <20230920-rmtfs-mem-guard-pages-v3-3-305b37219b78@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230920-rmtfs-mem-guard-pages-v3-3-305b37219b78@quicinc.com>
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_NONE,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, Sep 20, 2023 at 07:37:32PM -0700, Bjorn Andersson wrote:
> In the even that Linux failed to allocate the reserved memory range
> specified in the DeviceTree, the size of the reserved_mem will be 0,
> which results in a oops when memory remapping is attempted.
> 
> Detect this and report that the memory region was not found instead.
> 
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>

I dropped these checks in my remoteproc patches because Caleb suggested
maybe putting this check directly in of_reserved_mem_lookup() (or
similar) given that almost none of the users verify this [1].

Do you have any opinion on that? I asked back then too but you did not
reply yet [2]. :-)

[1]: https://lore.kernel.org/linux-arm-msm/c3f59fb4-4dd8-f27a-d3f5-b1870006a75c@linaro.org/
[2]: https://lore.kernel.org/linux-arm-msm/ZIsld-MAdkKvdzTx@gerhold.net/

> ---
>  drivers/soc/qcom/rmtfs_mem.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/soc/qcom/rmtfs_mem.c b/drivers/soc/qcom/rmtfs_mem.c
> index 83bba9321e72..13823abd85c2 100644
> --- a/drivers/soc/qcom/rmtfs_mem.c
> +++ b/drivers/soc/qcom/rmtfs_mem.c
> @@ -180,7 +180,7 @@ static int qcom_rmtfs_mem_probe(struct platform_device *pdev)
>  	int ret, i;
>  
>  	rmem = of_reserved_mem_lookup(node);
> -	if (!rmem) {
> +	if (!rmem || !rmem->size) {
>  		dev_err(&pdev->dev, "failed to acquire memory region\n");
>  		return -EINVAL;
>  	}
> 
> -- 
> 2.25.1
> 

