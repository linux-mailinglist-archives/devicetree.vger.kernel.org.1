Return-Path: <devicetree+bounces-4491-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D0CE7B2CCB
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 09:03:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 35AAB1C20982
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 07:03:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63855C12F;
	Fri, 29 Sep 2023 07:03:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98DEB3D78
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 07:03:16 +0000 (UTC)
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C01391A5;
	Fri, 29 Sep 2023 00:03:14 -0700 (PDT)
Received: from pps.filterd (m0369458.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 38T2OFY7007793;
	Fri, 29 Sep 2023 09:02:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	selector1; bh=2enBjh4tBxnFdWt6QZ9vWmJjW+oWmfOTuuCNhdQashs=; b=hA
	LmJsmNvjtMnacnVyLmDwWZUqI0KctgUSXU5c0cyflFnB9t8e9OKJzASTKQuLYRMW
	ac95QohIZpKntKaxv1fkgRbrpSeKjnlJw8UfBD4Qx8bhJpp1whbCwvtIyH2NH+fW
	G9VhU/rYMXz/s40zvgm0tSB0hDZAMKuxcT0eOg5sC7kDkMfp5jGdiYw3PDfc9cHh
	5pT0kcL3IO3gq4VqJwoCnw42+MFGDfh/Giq5pCKAhl7SDI8AZHwu3KNa/TCGujxB
	QSwxQsPhomDmfsKAt7MIO8x5k3qJhzckt4fRWF5/CkMb2lub7eq5kSCwU66fxIch
	eCiwj5HRvHH69B0lKnRg==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3ta9k0qe0t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 29 Sep 2023 09:02:54 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D7433100058;
	Fri, 29 Sep 2023 09:02:53 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id BF953226FBF;
	Fri, 29 Sep 2023 09:02:53 +0200 (CEST)
Received: from [10.201.21.122] (10.201.21.122) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Fri, 29 Sep
 2023 09:02:53 +0200
Message-ID: <74467a49-4218-f9f5-5f98-b43ea12fef2e@foss.st.com>
Date: Fri, 29 Sep 2023 09:02:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 0/2] Declare and enable watchdog on stm32mp25
Content-Language: en-US
To: <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-kernel@vger.kernel.org>
References: <20230922081055.6242-1-alexandre.torgue@foss.st.com>
From: Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <20230922081055.6242-1-alexandre.torgue@foss.st.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.201.21.122]
X-ClientProxiedBy: EQNCAS1NODE3.st.com (10.75.129.80) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-29_04,2023-09-28_03,2023-05-22_02
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 9/22/23 10:10, Alexandre Torgue wrote:
> Secure ARM watchdog is used on stm32mp25 relying on SMC to configure
> and kick the watchdog. It is set to 32 seconds on stm32mp257f-ev1
> board.
> 
> Regards
> Alex
> 
> Alexandre Torgue (2):
>    arm64: dts: st: add arm-wdt node for watchdog support on stm32mp251
>    arm64: dts: st: enable secure arm-wdt watchdog on stm32mp257f-ev1
> 
>   arch/arm64/boot/dts/st/stm32mp251.dtsi     | 6 ++++++
>   arch/arm64/boot/dts/st/stm32mp257f-ev1.dts | 5 +++++
>   2 files changed, 11 insertions(+)
> 
Series applied on stm32-next.

Regards
Alex

