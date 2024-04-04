Return-Path: <devicetree+bounces-56115-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF85897E24
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 06:06:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 96E031C218B8
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 04:06:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13D931CF9B;
	Thu,  4 Apr 2024 04:06:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=nxp.com header.i=@nxp.com header.b="QaHT63Ic"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR02-AM0-obe.outbound.protection.outlook.com (mail-am0eur02on2099.outbound.protection.outlook.com [40.107.247.99])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0E712F37
	for <devicetree@vger.kernel.org>; Thu,  4 Apr 2024 04:06:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.247.99
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712203609; cv=fail; b=rZJAQo+hfD4Bmn8ZwE3KF9IWkOG6+TvxUscMkyoUgbDqB+6hdcRXcwwSgnt2yvae3meE/gVVDFZIOAW+zou7BrQEP34IdM+f8y/BibB/tqep9Cu8MrBflTLPe2tCrhklZxVQBQPgKrRFoUPo/yPCWJE3mzcSQVbFMXFMR+43lgw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712203609; c=relaxed/simple;
	bh=nlJur4cfFmlOfu3ltNjuK9nFXhx0DsgOVnspW1ulKGA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=NdrSwB+82vSaL+dop3r0K+fzXWxOps5jKe5rE5+fJpn5phOQ/KgEoW4J861jp/3tuGNj5Nuw2gXqSYt6Tkh08OEM3tmI2raE0vz96eXJnh7VlgKehNCdXT5EBhZROUNN1dE8MKsyizUFrsKoJYQ9yaoPin3gfX1AobIviGkhyCc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (1024-bit key) header.d=nxp.com header.i=@nxp.com header.b=QaHT63Ic; arc=fail smtp.client-ip=40.107.247.99
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C3RIUglrKLBi4a7Y/EGjBtuj2+U553zNaWJ97gw5+PLPjSJ20qMQKdN6T6s5Q4ySPH6zAR+WTmit3q9RF/apFqMIoUTSLNWyd5dhoqJ10keqgQ93rtDWmKosVXm/U++uBgLYjciu3l6ifywDSZbtxrGuv1hNxNnnhydUIjgV+ILso+7Moi8l7v3E1CxBhmO/tAK2mJqiiqjOPJer0OZLT1d5Lht+P+DCNVoGnpnnNPvJP40aaxvyesaCj5xzZuOTaXu5oJ5MxRTT1uw+mqTeLcMaUsCsAT81/vlIVBrVQ8+J+9fLVWZG2ILBVIImVaQ/QHMYD0ibqfPzQh7t0AO9/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5iafJiwt0u/ZSB+xN75hL7bQLpW7SK24lej3A0fS7F8=;
 b=YCJanzITCnpDKpzmt0zcZbugPOdOzm7M1ShkFtzCgt3jiAtJfBVMTGFY19j3SjIS62erDVH8yUlQUOI4f3ZTIlXM42tFt40BZhRROTQ7+mJSuql/Y059q4ziJTONuBadhE7FZmoHwGD3JrxsnYupn1ccgLmlg3JMP+3Bq/fUho8eDnxmLY/42EidKJavPx74Uj5sxYuEZOmp6Lg0wFNQRua8EuKoaIF6GEZndxXJjcHZ0/Dius4ce6ju1QKfegyaR6lccz9oYcNjNHf+tTGCdYYLuz9WdSxrGs46Ob0hHLkqjILXIWaog5osV4I9LOetQTQPs4csW0wnns7wLAuY5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5iafJiwt0u/ZSB+xN75hL7bQLpW7SK24lej3A0fS7F8=;
 b=QaHT63IcobiQnXRsMUChZ8B2jiIMUPCS/XppVHzsHssyoKd2pzf326XvsF+SWqKvMB0a0LJjdHrIGYM+9mm5euzqplTz0Akbd0oYPjb05YMq5To/VILQzJRRpTaLDSULsAkW3HgnK+lKJY5BbABusetPySQJfY6RJz4mlBjIki4=
Received: from PAXPR04MB9642.eurprd04.prod.outlook.com (2603:10a6:102:240::14)
 by PA4PR04MB9389.eurprd04.prod.outlook.com (2603:10a6:102:2a8::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.31; Thu, 4 Apr
 2024 04:06:44 +0000
Received: from PAXPR04MB9642.eurprd04.prod.outlook.com
 ([fe80::3168:91:27c6:edf6]) by PAXPR04MB9642.eurprd04.prod.outlook.com
 ([fe80::3168:91:27c6:edf6%3]) with mapi id 15.20.7409.042; Thu, 4 Apr 2024
 04:06:44 +0000
Date: Thu, 4 Apr 2024 00:06:35 -0400
From: Frank Li <Frank.li@nxp.com>
To: Fabio Estevam <festevam@gmail.com>
Cc: cw00.choi@samsung.com, krzk@kernel.org, myungjoo.ham@samsung.com,
	robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
	marex@denx.de, Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] dt-bindings: extcon: ptn5150: Document the 'port' node
Message-ID: <Zg4nS+3ZMj3smyjT@lizhi-Precision-Tower-5810>
References: <20240404022943.528293-1-festevam@gmail.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240404022943.528293-1-festevam@gmail.com>
X-ClientProxiedBy: SJ0PR05CA0003.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::8) To PAXPR04MB9642.eurprd04.prod.outlook.com
 (2603:10a6:102:240::14)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB9642:EE_|PA4PR04MB9389:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	T3nBl0gUpSHBPWlxrgDI6qcfd5zCOa1KzKDWPOZ5TmAJRHbMCqwwyTj7VuMw5dUw9ln3KlPQJd0T/ifhUDke0PC337cUIIDlUDrkVtt2wCoCR84Lh+xXXFZKiOoNR0+DLRhrAYvauGTvdCYnc8LoEAI+cW5EGNlU0PEHoSegFh8Y50TKlgTzrFre2SoO8/htNWPfF0LtqYlBBaOuzHk9DNhurq8llXPce4vExCmGDCc6oztT1kxGsDiW3R0uFIrw8IQfdHO6aYY9li72thVrFSsAA2uJ71kxBQIv604dE3kRmymX+wkEmaTE1tmj2xxLSkD3uDFgxaShDQfAFgzVISdecIjQHesfvsJ0qpXYHD2Sbc8SXMeyDPdNEzurM3dI6TF64RBm/bySqQ2NnOCut6tVioSEeMnX9gx07bdEvWCgu9M0FKFiaP3KRzH1XMd5eAuMiKZOfA5CBvrIoox0sDda3sVI0hJ8DWbMsTjJZ82oF522qVMcdzc4y5txHmSUar7jEhdgvURanech7DSKQRg8RbSxBK5ja1Q/TxlkkiMsIZGD1fIlGcgh7JDtDm63OJNog2NMgAloFcl9ObhquWG8ty1SkQCop3kWjgHMo+1jKuyai6jrxwogoQIkpETECvhhL8i2YViDCH5RNEhtv8w6AFMdHKSRmD9cOCxTVx4=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB9642.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(366007)(52116005)(376005)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?pZ0viEI4dcJgcSLOtQBf6K+B2QxewkRxnwnrQz4fje62OgyA297eMpL6CkvS?=
 =?us-ascii?Q?f+QDHr9imHd5ApoiMU5eSyc1m6rnVzk9KVZNEDaUIAH1rA5cOUzAAHJay5xT?=
 =?us-ascii?Q?YZKuzLxOn2zYtc4QTOk2uc+ZnOJsxxbVPWowu0ygcVCq6KF3D989BXyMVALM?=
 =?us-ascii?Q?YoiS8xnr/5Kx/tDNTPLj3Ygw89rAkyu860kmGrYMNqu0xd7h5LNCT6ZCLdna?=
 =?us-ascii?Q?YIZV7lejHKe1VPlnwZa5OxTtS0EV1dLXN4U6Wc+KHPfDzL7JoF9iBQ98lMoI?=
 =?us-ascii?Q?UTuq7SdTKNRloUDmH8i4HNEFcLLUKMlZ/mRKs6J/iyLyn3Zp/4y0YM+JP9KD?=
 =?us-ascii?Q?Ln/2UaZXe3zrFxbcwTF12zgoLf87uqwJK69XM8eD/GjklAyi53raUI4tSWSy?=
 =?us-ascii?Q?Yy5RSlc0+YsN/dFlUlMhA9I7/0HHNHk9CsTf2tdWL2ZtBz+ZauAvKZojenJZ?=
 =?us-ascii?Q?2ZQRr9DfmRfEv6P1hVhy0TLvF6mF8wFIje0UCgbh4fDyNTcvLsXszjX7Ky7O?=
 =?us-ascii?Q?9wauJNCS+4JI0zbxTjurZDqDvOwMLfa5wzHUXn5Zzbgq5qraesCFRpcnzUa8?=
 =?us-ascii?Q?EI4JJkCO7UAGcFJtdinXNfe7d9ez3YxPblPcDe/kIWKq8Vq0pnGT1PFIUHXi?=
 =?us-ascii?Q?aL8f1LE2xRF1C+L/Ch8UcXLYYHhg8sGd0YjxJXhfeQgNis0/Kndv4kKOBFa3?=
 =?us-ascii?Q?7KlQ0EyEY/KNeCS9sgjZl0TschYZxiMkx3am+zMsR/F79Qa/qFzFDkf8Dr7P?=
 =?us-ascii?Q?FGAhf1JHW/QQakN1YKygtBQ3h0fNdzWoduZnV4nwLpCtP3/MqlWgomzvU64B?=
 =?us-ascii?Q?2cd6vE+SGxQSt+tIoNg3xBugrtbGt/fsF7mgb8UNO0iOiSAAifNY/DkxnaRK?=
 =?us-ascii?Q?HCIqzEKykci/eLl1EzyFF13Ulr1mHRDLML7lkjUIh9tkzOKSNvrI5VsMXdpK?=
 =?us-ascii?Q?itOaJl41IBClyi8NdZX0CXsglxvSCpfkarIKB0kMedR4PJsB0fKjzavr0uJo?=
 =?us-ascii?Q?aK4nlJbSPTLp1RfDNmJgh8ZxB93GSyaP9gA5mLaXEid0ALTIDelCzrk5zfUz?=
 =?us-ascii?Q?uIhPuN+Z9doCrIIABRnPKhxNJ0+VVq9IOhImJ7AF1Jz8XbdRyDvgyXcJyD0W?=
 =?us-ascii?Q?E9mfySdG/xaPDn84O/Wtv3a1HhhZn7JhAHlJlRnjtbxx4Y9huWbZ+k+5H7cK?=
 =?us-ascii?Q?OB8BE7B7RWBg/AxTnu2++qjXghQePdNCPT0d5KpHagui9rE1siEG6o1zVpFm?=
 =?us-ascii?Q?8iXyjVSxs1ZygX8rtvir5LSyrGPgezXcJI5S5I/+eFkcW6ZVBJVQ8lgeFpg/?=
 =?us-ascii?Q?8z/EUvhFeBFbnWJ2Jr5fN7y3bacZ2P9jI+9ygd3/W897aGopvqq6+/wHI8sO?=
 =?us-ascii?Q?wwDRJScbICfCuW1UKy9Vql0e67yG5tseQYETzROgZNiW3NuiulkVPf/tkNgM?=
 =?us-ascii?Q?GY2gcVpvrHrn8cWxQoeMwCxpGlHZsrK9NOA8rlWIJu804Ei13EIDsKly6SuZ?=
 =?us-ascii?Q?Ia1/7yMcU5lHodFZvgs7B7y8ReqNiRIj47w9s+zQxiWmN/601vZj0BeNb/Cm?=
 =?us-ascii?Q?77GEHzpxfKURmrIoV8OsWjH/mHz3pudAcZH6RYam?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab1f307f-63af-49af-60f7-08dc545ca3b8
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB9642.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Apr 2024 04:06:44.2601
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: njuHhSvdXe50sAhAwfW9sptSa8pomfEZQzfC124M81QkpaOjbfEy3vkGDMOqABgdnP3ATfoWIUj20XIp4FsGRw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR04MB9389

On Wed, Apr 03, 2024 at 11:29:43PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Doument the port node to link the PTN5150 to a TypeC controller.
> 
> This fixes the following dt-schema warnings:
> 
> imx8mp-dhcom-pdk3.dtb: typec@3d: 'port' does not match any of the regexes: 'pinctrl-[0-9]+'
> 	from schema $id: http://devicetree.org/schemas/extcon/extcon-ptn5150.yaml#
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Thanks, I met the same issue.

Reviewed-by: Frank Li <Frank.Li@nxp.com>

> ---
>  .../devicetree/bindings/extcon/extcon-ptn5150.yaml    | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/extcon/extcon-ptn5150.yaml b/Documentation/devicetree/bindings/extcon/extcon-ptn5150.yaml
> index d5cfa32ea52d..3472c69056ac 100644
> --- a/Documentation/devicetree/bindings/extcon/extcon-ptn5150.yaml
> +++ b/Documentation/devicetree/bindings/extcon/extcon-ptn5150.yaml
> @@ -36,6 +36,11 @@ properties:
>      description:
>        GPIO pin (output) used to control VBUS. If skipped, no such control
>        takes place.
> +  port:
> +    $ref: /schemas/graph.yaml#/$defs/port-base
> +    description:
> +      A port node to link the PTN5150 to a TypeC controller.
> +    unevaluatedProperties: false
>  
>  required:
>    - compatible
> @@ -58,5 +63,11 @@ examples:
>              interrupt-parent = <&msmgpio>;
>              interrupts = <78 IRQ_TYPE_LEVEL_HIGH>;
>              vbus-gpios = <&msmgpio 148 GPIO_ACTIVE_HIGH>;
> +
> +            port {
> +              ptn5150_out_ep: endpoint {
> +                 remote-endpoint = <&dwc3_0_ep>;
> +              };
> +           };
>          };
>      };
> -- 
> 2.34.1
> 

