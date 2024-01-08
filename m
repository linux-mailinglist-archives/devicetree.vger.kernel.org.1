Return-Path: <devicetree+bounces-30118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ED69826941
	for <lists+devicetree@lfdr.de>; Mon,  8 Jan 2024 09:16:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B729B1C21B4E
	for <lists+devicetree@lfdr.de>; Mon,  8 Jan 2024 08:16:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 652AA8F6D;
	Mon,  8 Jan 2024 08:16:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amd.com header.i=@amd.com header.b="jG3NROV1"
X-Original-To: devicetree@vger.kernel.org
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2056.outbound.protection.outlook.com [40.107.237.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2131945A
	for <devicetree@vger.kernel.org>; Mon,  8 Jan 2024 08:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amd.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DrDMHlv3ToC7oftVr0Y/suoeAWRLMnRS6IULV6DDJQfqoR+QQKV8r6Hxo6ah1oNwwqGNGkzFA++GqPLs5p89kyx9snDtvSFfu/S8t3kGL4i7vtwEglxVKazHNEnXoUER9SLp4/NTCAsge2e9XnM7bxeiYv6O8rTgP/cbIKpWXT6B7McqacPmEOxytoZSANhyM3XrNwjhvP0uCT/lpxF1OvdCihSc95t8DVUrExB/GT4XslT3Tw4FBcZxub6DQ9vP/6loC1YMTvWurQeTdLzIrN6jE5z2FMrNM4X2iCo8T+UbPisTlKZZ2GbSZr//RrUrjvQm1eHG5QEEyRtqbyOVPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mZtT2jnTbTNi38sIj39NNtFanAe9YH8Pc0mK6cZkI1M=;
 b=aB30oVZb4BdtThBFmSvdtGg7k/I+rlVwvj/UiVNu7qPlkchiHI+r3FphpxXNJBciO2ntzm3MrPTPSABMZ6hEno+gG89zUn+aXe7QeGZUJ4BUp0y3pFiv9eDqt3axA8cv1FmKFNjKX2IFdq22S6uEqvRpde9yAoBWrhUiD6pU2nSJhrLZZdSpGo+vlNlaGzfAq7df5vYq9Vj9zQE63c5lpd7hfZ7JCl9y/PHdnBrqa6kBcYV7tWiuE+xNBjMrF4RyGEUgubUVhwsUFN/Gv+FlkxUKKixGruoKRXtPoJMR+L7exprUj+tM8UBYCpMntLVZZcsS9KCQoNX5Oe8OJ9UELw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mZtT2jnTbTNi38sIj39NNtFanAe9YH8Pc0mK6cZkI1M=;
 b=jG3NROV1ActEpidbK0YBFqAk4suu/4OeE9qS3QgBENeFds6BsLEdLZwhmo1nXELVgD5EZpaqmYWp2uLVXCrDMWxlHMeVk9Ov/F1iUU+yx0BslltNVo4nu1F+WJYggTtMeWXzhDbRkRMr9d4gkSnpNJhNne9cd9fcnhxdOYSv0Qc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from CYXPR12MB9337.namprd12.prod.outlook.com (2603:10b6:930:d8::20)
 by MW4PR12MB5641.namprd12.prod.outlook.com (2603:10b6:303:186::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.21; Mon, 8 Jan
 2024 08:16:18 +0000
Received: from CYXPR12MB9337.namprd12.prod.outlook.com
 ([fe80::2b19:2045:59c7:cde2]) by CYXPR12MB9337.namprd12.prod.outlook.com
 ([fe80::2b19:2045:59c7:cde2%7]) with mapi id 15.20.7159.020; Mon, 8 Jan 2024
 08:16:18 +0000
Message-ID: <dbe4fe14-18bf-447a-925f-bc5848ebdcf3@amd.com>
Date: Mon, 8 Jan 2024 09:16:05 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 1/3] firmware: xilinx: Add ZynqMP efuse access API
Content-Language: en-US
To: Praveen Teja Kundanala <praveen.teja.kundanala@amd.com>,
 srinivas.kandagatla@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org-, praveent@amd.com
References: <20240108052617.32510-1-praveen.teja.kundanala@amd.com>
 <20240108052617.32510-2-praveen.teja.kundanala@amd.com>
From: Michal Simek <michal.simek@amd.com>
Autocrypt: addr=michal.simek@amd.com; keydata=
 xsFNBFFuvDEBEAC9Amu3nk79+J+4xBOuM5XmDmljuukOc6mKB5bBYOa4SrWJZTjeGRf52VMc
 howHe8Y9nSbG92obZMqsdt+d/hmRu3fgwRYiiU97YJjUkCN5paHXyBb+3IdrLNGt8I7C9RMy
 svSoH4WcApYNqvB3rcMtJIna+HUhx8xOk+XCfyKJDnrSuKgx0Svj446qgM5fe7RyFOlGX/wF
 Ae63Hs0RkFo3I/+hLLJP6kwPnOEo3lkvzm3FMMy0D9VxT9e6Y3afe1UTQuhkg8PbABxhowzj
 SEnl0ICoqpBqqROV/w1fOlPrm4WSNlZJunYV4gTEustZf8j9FWncn3QzRhnQOSuzTPFbsbH5
 WVxwDvgHLRTmBuMw1sqvCc7CofjsD1XM9bP3HOBwCxKaTyOxbPJh3D4AdD1u+cF/lj9Fj255
 Es9aATHPvoDQmOzyyRNTQzupN8UtZ+/tB4mhgxWzorpbdItaSXWgdDPDtssJIC+d5+hskys8
 B3jbv86lyM+4jh2URpnL1gqOPwnaf1zm/7sqoN3r64cml94q68jfY4lNTwjA/SnaS1DE9XXa
 XQlkhHgjSLyRjjsMsz+2A4otRLrBbumEUtSMlPfhTi8xUsj9ZfPIUz3fji8vmxZG/Da6jx/c
 a0UQdFFCL4Ay/EMSoGbQouzhC69OQLWNH3rMQbBvrRbiMJbEZwARAQABzSlNaWNoYWwgU2lt
 ZWsgKEFNRCkgPG1pY2hhbC5zaW1la0BhbWQuY29tPsLBlAQTAQgAPgIbAwULCQgHAgYVCgkI
 CwIEFgIDAQIeAQIXgBYhBGc1DJv1zO6bU2Q1ajd8fyH+PR+RBQJkK9VOBQkWf4AXAAoJEDd8
 fyH+PR+ROzEP/1IFM7J4Y58SKuvdWDddIvc7JXcal5DpUtMdpuV+ZiHSOgBQRqvwH4CVBK7p
 ktDCWQAoWCg0KhdGyBjfyVVpm+Gw4DkZovcvMGUlvY5p5w8XxTE5Xx+cj/iDnj83+gy+0Oyz
 VFU9pew9rnT5YjSRFNOmL2dsorxoT1DWuasDUyitGy9iBegj7vtyAsvEObbGiFcKYSjvurkm
 MaJ/AwuJehZouKVfWPY/i4UNsDVbQP6iwO8jgPy3pwjt4ztZrl3qs1gV1F4Zrak1k6qoDP5h
 19Q5XBVtq4VSS4uLKjofVxrw0J+sHHeTNa3Qgk9nXJEvH2s2JpX82an7U6ccJSdNLYbogQAS
 BW60bxq6hWEY/afbT+tepEsXepa0y04NjFccFsbECQ4DA3cdA34sFGupUy5h5la/eEf3/8Kd
 BYcDd+aoxWliMVmL3DudM0Fuj9Hqt7JJAaA0Kt3pwJYwzecl/noK7kFhWiKcJULXEbi3Yf/Y
 pwCf691kBfrbbP9uDmgm4ZbWIT5WUptt3ziYOWx9SSvaZP5MExlXF4z+/KfZAeJBpZ95Gwm+
 FD8WKYjJChMtTfd1VjC4oyFLDUMTvYq77ABkPeKB/WmiAoqMbGx+xQWxW113wZikDy+6WoCS
 MPXfgMPWpkIUnvTIpF+m1Nyerqf71fiA1W8l0oFmtCF5oTMkzsFNBFFuvDEBEACXqiX5h4IA
 03fJOwh+82aQWeHVAEDpjDzK5hSSJZDE55KP8br1FZrgrjvQ9Ma7thSu1mbr+ydeIqoO1/iM
 fZA+DDPpvo6kscjep11bNhVa0JpHhwnMfHNTSHDMq9OXL9ZZpku/+OXtapISzIH336p4ZUUB
 5asad8Ux70g4gmI92eLWBzFFdlyR4g1Vis511Nn481lsDO9LZhKyWelbif7FKKv4p3FRPSbB
 vEgh71V3NDCPlJJoiHiYaS8IN3uasV/S1+cxVbwz2WcUEZCpeHcY2qsQAEqp4GM7PF2G6gtz
 IOBUMk7fjku1mzlx4zP7uj87LGJTOAxQUJ1HHlx3Li+xu2oF9Vv101/fsCmptAAUMo7KiJgP
 Lu8TsP1migoOoSbGUMR0jQpUcKF2L2jaNVS6updvNjbRmFojK2y6A/Bc6WAKhtdv8/e0/Zby
 iVA7/EN5phZ1GugMJxOLHJ1eqw7DQ5CHcSQ5bOx0Yjmhg4PT6pbW3mB1w+ClAnxhAbyMsfBn
 XxvvcjWIPnBVlB2Z0YH/gizMDdM0Sa/HIz+q7JR7XkGL4MYeAM15m6O7hkCJcoFV7LMzkNKk
 OiCZ3E0JYDsMXvmh3S4EVWAG+buA+9beElCmXDcXPI4PinMPqpwmLNcEhPVMQfvAYRqQp2fg
 1vTEyK58Ms+0a9L1k5MvvbFg9QARAQABwsF8BBgBCAAmAhsMFiEEZzUMm/XM7ptTZDVqN3x/
 If49H5EFAmQr1YsFCRZ/gFoACgkQN3x/If49H5H6BQ//TqDpfCh7Fa5v227mDISwU1VgOPFK
 eo/+4fF/KNtAtU/VYmBrwT/N6clBxjJYY1i60ekFfAEsCb+vAr1W9geYYpuA+lgR3/BOkHlJ
 eHf4Ez3D71GnqROIXsObFSFfZWGEgBtHBZ694hKwFmIVCg+lqeMV9nPQKlvfx2n+/lDkspGi
 epDwFUdfJLHOYxFZMQsFtKJX4fBiY85/U4X2xSp02DxQZj/N2lc9OFrKmFJHXJi9vQCkJdIj
 S6nuJlvWj/MZKud5QhlfZQsixT9wCeOa6Vgcd4vCzZuptx8gY9FDgb27RQxh/b1ZHalO1h3z
 kXyouA6Kf54Tv6ab7M/fhNqznnmSvWvQ4EWeh8gddpzHKk8ixw9INBWkGXzqSPOztlJbFiQ3
 YPi6o9Pw/IxdQJ9UZ8eCjvIMpXb4q9cZpRLT/BkD4ttpNxma1CUVljkF4DuGydxbQNvJFBK8
 ywyA0qgv+Mu+4r/Z2iQzoOgE1SymrNSDyC7u0RzmSnyqaQnZ3uj7OzRkq0fMmMbbrIvQYDS/
 y7RkYPOpmElF2pwWI/SXKOgMUgigedGCl1QRUio7iifBmXHkRrTgNT0PWQmeGsWTmfRit2+i
 l2dpB2lxha72cQ6MTEmL65HaoeANhtfO1se2R9dej57g+urO9V2v/UglZG1wsyaP/vOrgs+3
 3i3l5DA=
In-Reply-To: <20240108052617.32510-2-praveen.teja.kundanala@amd.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR07CA0133.eurprd07.prod.outlook.com
 (2603:10a6:802:16::20) To CYXPR12MB9337.namprd12.prod.outlook.com
 (2603:10b6:930:d8::20)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYXPR12MB9337:EE_|MW4PR12MB5641:EE_
X-MS-Office365-Filtering-Correlation-Id: f448e5b1-8e86-4ae3-d718-08dc1022170b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	hVQ0zrLV0erihv/U5ImOunW0vl2bErg9KcyMRlYt/CudNcY4Ybsy4BdyKuJhlbFiGnR4lsU9q42xA+vULLy3fklRMBbBs2m0g6r0PS1q0hn61Ux+/7rUmw0Ui1XsbRHl1dw47ZXovdEqdntdtwz1ECfhFwY0oJu94Otmyq2RuSOC5V4hI4hfK8tLVDiz5AX7x0qOZ+OGW/J6A9LIxKs00ul1sexsYib+IASsrG+pkM/0SGdS19SJC+rhmm1TEfcy1SDLFAm6eFB2HWc7aC1aLoX5z3wKiPsIQSw7eMF+po4bLDd05Y1vT/e6dMIWeHvTVuRgyy/EdjjYpVPxi3JYgMND7h2RYmqn/nyadvDAGynTj19fWLknV+62UUi9n+X7SmmIvE6YW7rxuAY307M/AFzI5J1F4wp2ilHzVF6czJRVkTvBZMMmxvnrTZ7ldbG1XMw8HE2h0yyh6CgXQLcwdnTUgph+nscXLenzx26e0DGNHVWXW5BUv+4Z1ibtYigBuvjVxVpu5OBYugE669rLha5n+Nj/whpMW/AnKpckNtCurHiQNsTz+bRwdDLPJhw8YHSrZ4huAk68GHJeDm/xxnHfcRxRWk9ItxSaMIa6cvlvwxelibCpQE006zstyrAKA8oeICeZBN3uIQM+EXZQXw==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CYXPR12MB9337.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(39860400002)(396003)(366004)(136003)(376002)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(316002)(86362001)(4326008)(66946007)(66556008)(6486002)(478600001)(31696002)(6666004)(66476007)(38100700002)(31686004)(26005)(2616005)(53546011)(6512007)(6506007)(44832011)(8936002)(8676002)(83380400001)(5660300002)(36756003)(2906002)(41300700001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?ZU5ZN29WR1l6QTlpT2Q5eUFOM1hGcWpHR2J0Q1p5ZHFBYk1zSjNZT0Y4NWtq?=
 =?utf-8?B?bCtJem1paGNUQk41QjlaajJyekd4d0lmVkR4a0VNMmtmMG1YMXNvUHZtZ0Na?=
 =?utf-8?B?ZkNYTlV0UXFva0FDVC80R3hsS2N1bndOVzVZL1A0VVJ5ZUxPOVFCQ1AvQ3A0?=
 =?utf-8?B?YUx4d0NsYnYwM3hzRXJoSlNndFlWNXpHVVZJK2JZTmdMWjJPQVk2RytCWjk2?=
 =?utf-8?B?Q0l6Vkx1djhMQ25zS3VJMmJNbXZFUk1tRlYzOEI5NFczR3F4WTJkbWRzSlg0?=
 =?utf-8?B?eGRtckhRUm5EMmlnWEIzSlZTdjlEc0dGd0IxYXVMSmFyb2tDaDhvamk1OHQx?=
 =?utf-8?B?S1p6STJndlM3dERrVlpsYU9YM25IUHhBd3J4bXo2UXIvYjB2RXBaZ1lmdUpY?=
 =?utf-8?B?NmhSc0VQZzRmZmVPNnF4SGM1aG5sdmxkbEhyNkJsT3MzYUx3dkF4ZHoxL0dF?=
 =?utf-8?B?N2tIT2drR0VGMkRSOHYxUUxZd0xHeFJWU0gwK1dsZENDa0ZtZTFqUCtNUXlx?=
 =?utf-8?B?VEcwcGxRTkV2WFFPbUtLemExUHI1VlNMdHFod1NEVlJJc3pUNG02ZXhuZVJh?=
 =?utf-8?B?VEczUHY0dXVwb2lNaFJJNUFuZ0Fhamp4ZXVTVnlHNE8rb01QUlJhbFF3YWpy?=
 =?utf-8?B?dzByVE1FSlJiMDFFaERWN21ib0tMbUxwOXp4M0FpUjlzdzhIUFlxcFlHNjFn?=
 =?utf-8?B?YVU1WDBLMnBjWDYraEtFZWhQcFI2Vml4NXQzOE5KazZHd2llbXI5T1NFUDh6?=
 =?utf-8?B?YTR6bjhsY3c3RW9aSDRUemgveXBKczlnUkRhNjhIVXp3b1BnVC9TQXpZUTlx?=
 =?utf-8?B?bWhWMnBEMVBEOVpxb2NtcmhYWEs2bHc5akdDQzNINklmQ3RGSEwrTGt6Mk55?=
 =?utf-8?B?Z3ZNVzdZcENIYm04TkhhbTA5cG9XK01DZ25GdzdFZ01PYXRjQ3BCU0x4eits?=
 =?utf-8?B?UEs0Q0l5RHd1VU01Z2t4Vnk1OEQxZytwNHVvZE9uNUhzcU9iQllXSjN4bEV1?=
 =?utf-8?B?TzhkSU1RYjBlRE1TR05hOS95bEw4dW9mZ3hyQU9IUTA0YSt3MklXNkEvREx0?=
 =?utf-8?B?YlhJRUpBb29NRHhxUjBxajhWQWQ2ajVoRGhkUmcyejRLSFAwSU9xaHhydXdZ?=
 =?utf-8?B?VFFhOFViTDFhZlpoaEtPSVUwUmh5cjAvY3FMa3JrekdJemxrZUIyTmxoVzFF?=
 =?utf-8?B?elJjQzI2NlNpbGlHVFpwQzZPaXVpbEM0ZE9EQmh1dTYyUDBMSzNUZmNKaXJV?=
 =?utf-8?B?b3NUNFZvRU1Tc3puMStxUEJTcmZzcVUycjdGVWtxRVVtYWZDNXdCVENlVnB2?=
 =?utf-8?B?WXV0QjgwcHk2dXMvcjF1bnVMYVdUamJjNlNpYjJwKzlxTFZGcXNwYlNWY2Q0?=
 =?utf-8?B?NWJoMnkwT0hseFJEYm1TSkhtdUQ0ekZ6UmNMOU8zNFljUWVZcy81RTJQeG83?=
 =?utf-8?B?dTgrdHQ3dlhoY2FuelhaMHFyRk1yM3k4WHFWUTZzbVpKNWdVREVVemd6R2o0?=
 =?utf-8?B?QnRXVjkrdXZEVTlXa01UTXV0aWt2azNRUXExdHU3TktpVFFUaVhXT2VXdUdU?=
 =?utf-8?B?MTFHWDcrYVhUM3R1M2RzTG4yb2VUVjNTbkVLbm1nK2NRTWtDUnZZOG9uSTIx?=
 =?utf-8?B?ZWp5Wm1WeW14ZzdQV3FkdmxIaFNmRERhaTVSbXZhNTBQdEp0eFZWeWJWSDAv?=
 =?utf-8?B?SEV5akk4eCt5Y09VazRVWHV4MGdTTFhqMlh0OUEyZUVuUHFrZWxjczcrWVRV?=
 =?utf-8?B?cmpuem1mRFBvUEw3YzFHbzZRd1dnTGdHcmNrd0Q4TERjdklIVDFFbFI0ZzVQ?=
 =?utf-8?B?ZHdKSGZrN1RKT09sQnFLdlJCSUVOQVlVd3hjNVVOaEwvd0pja2dNOFZuelI2?=
 =?utf-8?B?MlBESXV2emkzT0xSSmdBdk5BYzd4aUJJb1BmTUJaeDZnbXJFMk5Kc1V1VS9L?=
 =?utf-8?B?WW5MQkVvcWpVcXJiRHhsQzFnU0xJZTJnaFAzZjJPREJRd3F3bnBwMUJqUmtL?=
 =?utf-8?B?bnBhekdEMGtXOUw2U2d6NnlkMDdBUFhDdG5COEpYUzlJeTN0eG9uem00VkIx?=
 =?utf-8?B?emxrRVhVcjhHc3JkN2pzZkJKbkpzV1QxQkhvZHdQWkNGODNBdFQ3Vjh2bHBM?=
 =?utf-8?Q?0vd4wvdSqqaRXNJAIjp8lVlKs?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f448e5b1-8e86-4ae3-d718-08dc1022170b
X-MS-Exchange-CrossTenant-AuthSource: CYXPR12MB9337.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2024 08:16:18.3725
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SHP3nR9qKmaFV7PqMurWLZosRS4fuimJd5TCCjs/M15cv5kkzyBDpH/GlPs+VuRD
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB5641



On 1/8/24 06:26, Praveen Teja Kundanala wrote:
> Add zynqmp_pm_efuse_access API in the ZynqMP
> firmware for read/write access of efuse memory.
> 
> Signed-off-by: Praveen Teja Kundanala <praveen.teja.kundanala@amd.com>
> ---
>   drivers/firmware/xilinx/zynqmp.c     | 25 +++++++++++++++++++++++++
>   include/linux/firmware/xlnx-zynqmp.h |  8 ++++++++
>   2 files changed, 33 insertions(+)
> 
> diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
> index b0d22d4455d9..5abf882a43f5 100644
> --- a/drivers/firmware/xilinx/zynqmp.c
> +++ b/drivers/firmware/xilinx/zynqmp.c
> @@ -3,6 +3,7 @@
>    * Xilinx Zynq MPSoC Firmware layer
>    *
>    *  Copyright (C) 2014-2022 Xilinx, Inc.
> + *  Copyright (C) 2022 - 2023, Advanced Micro Devices, Inc.
>    *
>    *  Michal Simek <michal.simek@amd.com>
>    *  Davorin Mista <davorin.mista@aggios.com>
> @@ -1435,6 +1436,30 @@ int zynqmp_pm_aes_engine(const u64 address, u32 *out)
>   }
>   EXPORT_SYMBOL_GPL(zynqmp_pm_aes_engine);
>   
> +/**
> + * zynqmp_pm_efuse_access - Provides access to efuse memory.
> + * @address:	Address of the efuse params structure
> + * @out:		Returned output value
> + *
> + * Return:	Returns status, either success or error code.
> + */
> +int zynqmp_pm_efuse_access(const u64 address, u32 *out)
> +{
> +	u32 ret_payload[PAYLOAD_ARG_CNT];
> +	int ret;
> +
> +	if (!out)
> +		return -EINVAL;
> +
> +	ret = zynqmp_pm_invoke_fn(PM_EFUSE_ACCESS, ret_payload, 2,
> +				  upper_32_bits(address),
> +				  lower_32_bits(address));
> +	*out = ret_payload[1];
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(zynqmp_pm_efuse_access);
> +
>   /**
>    * zynqmp_pm_sha_hash - Access the SHA engine to calculate the hash
>    * @address:	Address of the data/ Address of output buffer where
> diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
> index d1ea3898564c..ec3e19065f8d 100644
> --- a/include/linux/firmware/xlnx-zynqmp.h
> +++ b/include/linux/firmware/xlnx-zynqmp.h
> @@ -3,6 +3,7 @@
>    * Xilinx Zynq MPSoC Firmware layer
>    *
>    *  Copyright (C) 2014-2021 Xilinx
> + *  Copyright (C) 2022 - 2023, Advanced Micro Devices, Inc.
>    *
>    *  Michal Simek <michal.simek@amd.com>
>    *  Davorin Mista <davorin.mista@aggios.com>
> @@ -155,6 +156,7 @@ enum pm_api_id {
>   	PM_CLOCK_GETPARENT = 44,
>   	PM_FPGA_READ = 46,
>   	PM_SECURE_AES = 47,
> +	PM_EFUSE_ACCESS = 53,
>   	PM_FEATURE_CHECK = 63,
>   };
>   
> @@ -546,6 +548,7 @@ int zynqmp_pm_set_requirement(const u32 node, const u32 capabilities,
>   			      const u32 qos,
>   			      const enum zynqmp_pm_request_ack ack);
>   int zynqmp_pm_aes_engine(const u64 address, u32 *out);
> +int zynqmp_pm_efuse_access(const u64 address, u32 *out);
>   int zynqmp_pm_sha_hash(const u64 address, const u32 size, const u32 flags);
>   int zynqmp_pm_fpga_load(const u64 address, const u32 size, const u32 flags);
>   int zynqmp_pm_fpga_get_status(u32 *value);
> @@ -739,6 +742,11 @@ static inline int zynqmp_pm_aes_engine(const u64 address, u32 *out)
>   	return -ENODEV;
>   }
>   
> +static inline int zynqmp_pm_efuse_access(const u64 address, u32 *out)
> +{
> +	return -ENODEV;
> +}
> +
>   static inline int zynqmp_pm_sha_hash(const u64 address, const u32 size,
>   				     const u32 flags)
>   {

Acked-by: Michal Simek <michal.simek@amd.com>

Thanks,
Michal

