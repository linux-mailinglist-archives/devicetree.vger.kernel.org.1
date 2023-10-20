Return-Path: <devicetree+bounces-10466-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B32B17D153D
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 19:55:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E44F01C20EF8
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 17:55:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 142E9208AB;
	Fri, 20 Oct 2023 17:55:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GE8f/aJB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3B512032F;
	Fri, 20 Oct 2023 17:55:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 954CFC433C7;
	Fri, 20 Oct 2023 17:55:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697824538;
	bh=6utHZ9+NrAIuuZw1d4OnIC9m1KlbuOC3s+8qq8dWbjg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GE8f/aJBsQX15JtYK3XWsfMDwaNMwSWbr31ddKKB7XFNEHWDL17LaNbqM8JZipEYW
	 9b1WxxIQYYKRQ9lfVKjL7GNKZnbkoAsgud9JeMXsCGdDVTHLNuY93njZCxoa/yJ9Pp
	 S+lD+S2qBZXYmqfpIw933Rl+xBbEssCvOjrwqvTZW1QPGwoU3fP/Z/x8wQYu6wslMK
	 Sez14bJzduxCCrvAKCwnbM0L8aBh6MsE6+fSlUcrtATvqwocGi9sdoyJ6EiMsnXDTh
	 +if3gxc3gonSFzffq4Fj9lfHzRBlCgMZiHjA1UTRPR8yeS0E17uB4YCrjzTdTA4xFO
	 HzmX2VJZLmJTw==
Date: Fri, 20 Oct 2023 23:25:27 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Frank Li <Frank.Li@nxp.com>
Cc: manivannan.sadhasivam@linaro.org, aisheng.dong@nxp.com,
	bhelgaas@google.com, devicetree@vger.kernel.org, festevam@gmail.com,
	imx@lists.linux.dev, jdmason@kudzu.us, kernel@pengutronix.de,
	kishon@kernel.org, kw@linux.com,
	linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	lorenzo.pieralisi@arm.com, lpieralisi@kernel.org, maz@kernel.org,
	s.hauer@pengutronix.de, shawnguo@kernel.org, tglx@linutronix.de
Subject: Re: [PATCH v2 5/5] tools: PCI: Add 'B' option for test doorbell
Message-ID: <20231020175527.GD46191@thinkpad>
References: <20230911220920.1817033-1-Frank.Li@nxp.com>
 <20230911220920.1817033-6-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230911220920.1817033-6-Frank.Li@nxp.com>

On Mon, Sep 11, 2023 at 06:09:20PM -0400, Frank Li wrote:
> Add doorbell test support.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
>  tools/pci/pcitest.c | 16 +++++++++++++++-
>  1 file changed, 15 insertions(+), 1 deletion(-)
> 
> diff --git a/tools/pci/pcitest.c b/tools/pci/pcitest.c
> index 441b542346354..215d0aa8a09fe 100644
> --- a/tools/pci/pcitest.c
> +++ b/tools/pci/pcitest.c
> @@ -36,6 +36,7 @@ struct pci_test {
>  	bool		copy;
>  	unsigned long	size;
>  	bool		use_dma;
> +	bool		doorbell;
>  };
>  
>  static int run_test(struct pci_test *test)
> @@ -149,6 +150,15 @@ static int run_test(struct pci_test *test)
>  			fprintf(stdout, "%s\n", result[ret]);
>  	}
>  
> +	if (test->doorbell) {
> +		ret = ioctl(fd, PCITEST_DOORBELL, 0);
> +		fprintf(stdout, "Push doorbell\t\t");

"Ringing doorbell on the EP".

- Mani

> +		if (ret < 0)
> +			fprintf(stdout, "TEST FAILED\n");
> +		else
> +			fprintf(stdout, "%s\n", result[ret]);
> +	}
> +
>  	fflush(stdout);
>  	close(fd);
>  	return (ret < 0) ? ret : 1 - ret; /* return 0 if test succeeded */
> @@ -174,7 +184,7 @@ int main(int argc, char **argv)
>  	/* set default endpoint device */
>  	test->device = "/dev/pci-endpoint-test.0";
>  
> -	while ((c = getopt(argc, argv, "D:b:m:x:i:deIlhrwcs:")) != EOF)
> +	while ((c = getopt(argc, argv, "D:b:m:x:i:BdeIlhrwcs:")) != EOF)
>  	switch (c) {
>  	case 'D':
>  		test->device = optarg;
> @@ -224,6 +234,9 @@ int main(int argc, char **argv)
>  	case 'd':
>  		test->use_dma = true;
>  		continue;
> +	case 'B':
> +		test->doorbell = true;
> +		continue;
>  	case 'h':
>  	default:
>  usage:
> @@ -243,6 +256,7 @@ int main(int argc, char **argv)
>  			"\t-w			Write buffer test\n"
>  			"\t-c			Copy buffer test\n"
>  			"\t-s <size>		Size of buffer {default: 100KB}\n"
> +			"\t-B			Doorbell test\n"
>  			"\t-h			Print this help message\n",
>  			argv[0]);
>  		return -EINVAL;
> -- 
> 2.34.1
> 

-- 
மணிவண்ணன் சதாசிவம்

