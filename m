Return-Path: <devicetree+bounces-2294-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F307AA7C3
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 06:29:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 77704281C66
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 04:29:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DF8117FD;
	Fri, 22 Sep 2023 04:28:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 559615660
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 04:28:56 +0000 (UTC)
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7CE45192;
	Thu, 21 Sep 2023 21:28:54 -0700 (PDT)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 38M4Slra126240;
	Thu, 21 Sep 2023 23:28:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1695356927;
	bh=IiX5cbOS+omDg/J1zooMAiLYqmbGUddeeaSNa1sfP9Y=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=L7r8H6BoKWAlBC/hURAL4mD0T/ixLzeTVCVKXvRDAxGfVSVj26oi2v6JN6nORGWzO
	 WYi58PK3YFSbxBTJ5f3jMvxJwxciMXV4yWo27Ull8/w3NIn3VW7Pa2s3TzSmdU6Egt
	 T+ChFeottJRrW0zcsuLpq55BBnojLQ9O2sQ7EE34=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 38M4SlMI024377
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 21 Sep 2023 23:28:47 -0500
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 21
 Sep 2023 23:28:46 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 21 Sep 2023 23:28:46 -0500
Received: from [10.24.69.199] (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 38M4Sg1S029340;
	Thu, 21 Sep 2023 23:28:43 -0500
Message-ID: <271b361d-02b3-6363-4214-84d40b66f3ac@ti.com>
Date: Fri, 22 Sep 2023 09:58:42 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v2 2/4] arm64: dts: ti: k3-am654-base-board: add ICSSG2
 Ethernet support
Content-Language: en-US
To: Andrew Lunn <andrew@lunn.ch>
CC: Vignesh Raghavendra <vigneshr@ti.com>, Nishanth Menon <nm@ti.com>,
        <afd@ti.com>, Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, Tero
 Kristo <kristo@kernel.org>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <srk@ti.com>,
        <r-gunasekaran@ti.com>
References: <20230921060913.721336-1-danishanwar@ti.com>
 <20230921060913.721336-3-danishanwar@ti.com>
 <bdb60c9f-467e-4960-b516-9d79f43544ed@lunn.ch>
From: MD Danish Anwar <danishanwar@ti.com>
In-Reply-To: <bdb60c9f-467e-4960-b516-9d79f43544ed@lunn.ch>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_MED,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 21/09/23 21:40, Andrew Lunn wrote:
>> +	/* Dual Ethernet application node on PRU-ICSSG2 */
> 
> How relevant is "Dual Ethernet" here? You are talking of adding
> switchdev support, and runtime swapping the application. All these
> properties should be valid for the switch application as well?
> 

All these properties and nodes are valid for switch mode as well. The
comment of "Dual Ethernet application node" is mainly to describe the
two physical ports that are present on the AM654x-EVM.

> In fact, you are describing hardware here, so the application should
> not actually matter.
> 
> So maybe this comment should be:
> 
> Ethernet node on PRU-ICSSG2
> 

Sure, this makes more sense. I will change the comment.

> 	Andrew

-- 
Thanks and Regards,
Danish

