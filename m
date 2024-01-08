Return-Path: <devicetree+bounces-30167-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE04826B7C
	for <lists+devicetree@lfdr.de>; Mon,  8 Jan 2024 11:19:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 888CCB217A6
	for <lists+devicetree@lfdr.de>; Mon,  8 Jan 2024 10:19:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33B5413AED;
	Mon,  8 Jan 2024 10:19:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amd.com header.i=@amd.com header.b="QMdZhTtk"
X-Original-To: devicetree@vger.kernel.org
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2040.outbound.protection.outlook.com [40.107.236.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F3BB13AC9
	for <devicetree@vger.kernel.org>; Mon,  8 Jan 2024 10:19:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amd.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AfKwYtdLyqVJBiasC4nCjbOIF3MgrFna6BNZ8co0wCn4z4ynVAme7ZIUeteEPpglSzpGOcYxgxiXgNjHb1O/z/K+k2LRhGYvAz8lyuWp74m8OYFInVmvHzSqWjrTtuusDMiupGQjVEWoUZ6ngKqcDQLygb/vXw84VituMXmEjfLtPgYzgYuJ9FulO4+lzVW1cWrPK1mBdhjj8UcZg79nurSFxcztq+UPGvIZc99vOFEXZZnMSTHZJ4hT4stn5woOX0jtv+AjLa2Ak8PRRpd4vh5Gs2LZT0y2S6g+B1mMoILF2lUPlksrkKTUV00UVMcIAuxVaq8MSHo8jixbhrfzOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aSgQbt00p+OGDKlKrqySmnUKuAEDamc1BIqdpmclSwY=;
 b=iSXlwh73aDwWJDFOmqZgO0cDFIFT0j7Ic+h4++Y5j+2vRr46KB02JhKsavBSjCZrKNoB8de1elbdUV1QC1qUOLCoQ5ttNHmGwr7msqKWdmQDoLhoQmz/yTt6T3As8j9mPM4pMnD8llw+8xsl6qtCejpb/JUP3tuxiOeTLZI1iIYyJbSHxJeR3kJKjxVVr5aDHIWpVThAUGiwAsHGdnmx5iNU1wqn7hW184JmSmLxB0vAX4S24YJmhz9+MSKU2aXQepLJwAE6T0w+zqDKII8C53hkcgRBybmNHAOis2gdAo6Xu0H6R5JZ2Hnr9ietQS5cVLD2Vd8nCyvlck+ru9k+qA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aSgQbt00p+OGDKlKrqySmnUKuAEDamc1BIqdpmclSwY=;
 b=QMdZhTtkdmSjimvy8TKzH2UMlDZkhcwKT9wYk0oWASylS9DsqQulS3lLAJVzJ6igoB8oy4iBfE3VFl21KerJgX+zQ8rmnQ7TEGOMoXvO6DTL0S2cXre3zfBrJxPHlBOyc5ss1SF4xjEynmBmJsrSgHYVahuS5P9AiQRiBuEBEQ4=
Received: from DM4PR12MB7624.namprd12.prod.outlook.com (2603:10b6:8:107::11)
 by SN7PR12MB6713.namprd12.prod.outlook.com (2603:10b6:806:273::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.21; Mon, 8 Jan
 2024 10:19:28 +0000
Received: from DM4PR12MB7624.namprd12.prod.outlook.com
 ([fe80::5409:f848:198:3c0c]) by DM4PR12MB7624.namprd12.prod.outlook.com
 ([fe80::5409:f848:198:3c0c%5]) with mapi id 15.20.7159.020; Mon, 8 Jan 2024
 10:19:27 +0000
From: "Kundanala, Praveen Teja" <praveen.teja.kundanala@amd.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	"srinivas.kandagatla@linaro.org" <srinivas.kandagatla@linaro.org>,
	"robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "Simek, Michal"
	<michal.simek@amd.com>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>
CC: "linux-kernel@vger.kernel.org-" <linux-kernel@vger.kernel.org->
Subject: RE: [PATCH V3 2/3] dt-bindings: nvmem: Convert xlnx,zynqmp-nvmem.txt
 to yaml
Thread-Topic: [PATCH V3 2/3] dt-bindings: nvmem: Convert xlnx,zynqmp-nvmem.txt
 to yaml
Thread-Index: AQHaQfNa+A9agRa0hUqCpUo4vkeWHbDPfwkAgAAzK/A=
Date: Mon, 8 Jan 2024 10:19:27 +0000
Message-ID:
 <DM4PR12MB76241DBBE54D3792CDF72D4DCB6B2@DM4PR12MB7624.namprd12.prod.outlook.com>
References: <20240108052617.32510-1-praveen.teja.kundanala@amd.com>
 <20240108052617.32510-3-praveen.teja.kundanala@amd.com>
 <8cf79b89-741d-4a68-a93d-3a6496ee1919@linaro.org>
In-Reply-To: <8cf79b89-741d-4a68-a93d-3a6496ee1919@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
 MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_ActionId=d8d85db9-3a39-44d1-a9d6-d2ad8a70345d;MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_ContentBits=0;MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_Enabled=true;MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_Method=Standard;MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_Name=General;MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_SetDate=2024-01-08T10:11:31Z;MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_SiteId=3dd8961f-e488-4e60-8e11-a82d994e183d;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR12MB7624:EE_|SN7PR12MB6713:EE_
x-ms-office365-filtering-correlation-id: 1dbb2d0d-30fa-41ec-a0de-08dc10334b95
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 h4awQwtqSbNBiJGLyPknJszfUZFupULiP8KTxL11uHR2SGh11cpMjITxvFFBS/VJJ3WxasrWD1P1xJOj2Tq11mCCUhdUOvd+J/jBctQeEeEz1umQNZ9geXs8nzWjYc9nc4aHdNsEvMh/2ovb9lZwVJX34Aq1QAUNAHBC3Ew7xeQhPrq476HdUJYyVKkz2J0faAc892r3f3sv6B61QqI4Ozg332x4zEMRF/WEC91Nr2NES/GpRIbQlsIpdmPewZGQSl2DvsOZGaDNYVKM5xm4rbSVrtfOg4tVHxDySlN1NqEIn7IN60aZ22Y6Zd/34oLW8iqmoStYg86ykPTGliSKPQ8O013wG+FdYlqe4/U3Bmd+014w1UKWY/5LGIhBm5C9dh0nnhyQnvoKl/Fa4k+ZUYSHBaRTKF+sLf9vO/wM4Eu4pCVvM5KEalykrt02rw9SvwHZs3CKx+GquqnByufj3gSkFyPqBtq54lH4b5R9cPv8tUcMms9smuyOMgQlEslDBKBJ4Fh5rav6yOlmtB+0ZhraOnSrRezye1MeJNwfRl/a4ZR/Pg1XJNgV95ySEKeU44oy+OXCXh9xvDxMcxeInpUmNkGeuhz43xwICDlJr9AhWJey4f3DzCTbrCXCC0tab8hPCZA6PPP8jt9LM5PCKRjTSOmkMuh6XKPH8D4mQ4c=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM4PR12MB7624.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(376002)(346002)(136003)(396003)(366004)(230273577357003)(230173577357003)(230922051799003)(64100799003)(186009)(1800799012)(451199024)(41300700001)(86362001)(8936002)(8676002)(55016003)(38070700009)(2906002)(5660300002)(26005)(107886003)(64756008)(66446008)(66556008)(66476007)(110136005)(316002)(66946007)(52536014)(76116006)(71200400001)(9686003)(478600001)(6506007)(33656002)(83380400001)(7696005)(53546011)(122000001)(38100700002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?Y01Rb0tqY1Myb2RxWUJ3Rm1iQXNQelZMQnMvMzhKMWpRektmODJPTHR0a0gx?=
 =?utf-8?B?TnlqRExoa2lZZ2xuY2I3dDUwZUxNc0NMSEVucDBONGJJNHMrcnBqeEcyeUFl?=
 =?utf-8?B?U2dPeHVFelZ1bTBoNTRlRlhpb1JwclZQaHFKQTllL3p3N29abXQzWUpla3hk?=
 =?utf-8?B?MzB5UWRrOFFkZS95QXVNdnYrbXVyQi9XRnpkN215cWphWXVSNlRLVWt3dGtV?=
 =?utf-8?B?aFZmOFFsVXM2eHR4TUZYZjZOb1MxeXdhUHJwNjVjNm9MYWJqVzNYcXYxWDBr?=
 =?utf-8?B?SDcvdDQxTE5rS0JERDhiaTdDSCtlQlVsWXR2REl4Zyt0Lzh2b2d0L0xKYnNs?=
 =?utf-8?B?b2pXTFJaYk95Qm13WmZ1ZTBwTTBjSmNKT2VROUFDYzk1YTdGRHpWQ3UwcHlG?=
 =?utf-8?B?cEgvRDhLbVJ5ZkhYM1FHTGlQS3JqUCtXOCtrZ2NMVTlkNUQ5UGkvMStyR1VN?=
 =?utf-8?B?dFNEbTZVNjVsKzRBcnVlM2lEbnp0aFEvTnhJREFSVXQzVFhTdHdpZEhqdE05?=
 =?utf-8?B?UkNidy9CVTRmdldKVlV0NFk4RXRNRXVvTnQxTG5aYjExSlRaQmhNTUt1czRq?=
 =?utf-8?B?R0pZT05hSnUvUGt6bFJSSmtBcGVoV0EyTXB1UzJObnhneUNBRmEzRDJTNkpB?=
 =?utf-8?B?SzVWTHlBNHRaM2xlNmlRMEV5MENYVnk3M041OEk0K29lcitlZ2p2SXdzQi9F?=
 =?utf-8?B?ZWxHaEJlM3RSejR1UEhzdEZzbW1Nck5yNzhwdU1MbmhjTDgyTXczU005a0Yr?=
 =?utf-8?B?OS9WRVFvZ3ZhMXk0Y3N0TEc5R2ZjRlVsNVFMUTN4cFh0T0RzSkNKOGhvc011?=
 =?utf-8?B?RjZ0N3QyVWpHcHhNMnlnQzJFNzNseElFejBqeHNUTGRsYVl1aVpRV2cybC95?=
 =?utf-8?B?NEhjb0VxTHcxV21qR3hYUEhrNWtHS09tbDlUVzVyT3RqU2pXbkZOTzc3TWRu?=
 =?utf-8?B?ZVo5Uy9CeEhPYlM0c09QYVhlZVRDazVZb0U4ZzdYNUlDZVNPS3lyK1EyeW5G?=
 =?utf-8?B?WlNQVUNrbkdaQU1qbFdwZ2hDZUhMRnpnSDVBcU1BLzRSaHh2ejM3WXltbDZR?=
 =?utf-8?B?RWZ1N0JYZTUreUtJYnBHcFVCQ2ZDZ0VyNjNudTlJL1VWenNMKzBuM3Irc1ox?=
 =?utf-8?B?V2E2dEJkS2MvdnY3SlNUNDZQS1krNWE1RThLY1Y1MENBeHcwcmE5NVp6Mng2?=
 =?utf-8?B?QXo0OWh3YVBQeEFNckw2cUdxR0J1M1ZlZ3pCakV5ZmJwSDI4M0xSSFNXZWFm?=
 =?utf-8?B?OWEwTTlQN1FSOEd0RVRod1Q3MUExVFZQSjkyYllmMnZzSHZvb0c1WkRIbC9l?=
 =?utf-8?B?OVhCQVJCekxDRWx6SjJiNmpMTDRRb0JWTkRnSGZBZEQ1Y1YydHBHd0pSVDFr?=
 =?utf-8?B?eEp6bU8wVUExT1pWMm9QNTBHVWpQcEZZN2U4dHA1dDRKai9vZnJCeEtFc3lR?=
 =?utf-8?B?T21IZmVVcC9DZXkwUW1DUDVLMm1sU0Q2NXNNMG9YTmExZ2VycGl0aGJIZnd6?=
 =?utf-8?B?dVBxZldxUG9qZDllT0ZvRFJlL0JpVFRGZUpwZ2JhVHJmZENQWFI4SEozSXQ2?=
 =?utf-8?B?bDVrVzUvc0l4bzFRMnArbHBMOTc0YkxVSmJGYTVNZTMzTVhmeHdnYTE1bHJJ?=
 =?utf-8?B?c2MrT0VqVlF4T1NGOTdjQ3pyQjNPMHJGRFVXSDJOb1hoTjhHeTdUbzJ4UEU5?=
 =?utf-8?B?andQNnVtUkw2dno1SkZSOWVkdUVKUVVJZVUxK2M0TmZWYld0Wk5paCtTb0Uz?=
 =?utf-8?B?V0FFNUF2SnpJaHZZWTJvMDF6VHg1dzNwRzFnQ0R1QTNUQU1LWkxpTnpIZUlU?=
 =?utf-8?B?VzcvMTBnb1BnbEp3VVhQZVd2NEc0VWxVejA4anU1cncwTnN0T3REa2FkQ2Zq?=
 =?utf-8?B?YzZpOTc3OVUvd0tGb29XUGFBN0g2cmlmUWJCRGJQczhhTVNyeXI1bzUzM1la?=
 =?utf-8?B?MGduSnp3MTlZYnQwTkM3ZjYvSU5GU0N5TFkvSnY1dXY3RkUweEY2V2JTN0Nl?=
 =?utf-8?B?ZVdSa1J3d1RmaGtHRVlpTkhUeVU5cE8xUGg5Z3NQbGZNdmlWekh2T3dySEtu?=
 =?utf-8?B?ajJFK3AxTzhvMTlvRjJhandaOHZ0NDkyRHNkN0hTMUJjTnYvWlh5aUdyQ0w4?=
 =?utf-8?Q?CuXM=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR12MB7624.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1dbb2d0d-30fa-41ec-a0de-08dc10334b95
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2024 10:19:27.7041
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mctKJ4K1Z25mnb1RjVSnQ6wI355rzQKvOzCIueyEzqCnSZLxvyTg1r7tbvUUqo3M8gxM8sT6prxnjyaL3sz2SA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB6713

W0FNRCBPZmZpY2lhbCBVc2UgT25seSAtIEdlbmVyYWxdDQoNCkhpIEtvemxvd3NraSwNCg0KPiAt
LS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBLcnp5c3p0b2YgS296bG93c2tpIDxr
cnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+DQo+IFNlbnQ6IE1vbmRheSwgSmFudWFyeSA4
LCAyMDI0IDEyOjM4IFBNDQo+IFRvOiBLdW5kYW5hbGEsIFByYXZlZW4gVGVqYSA8cHJhdmVlbi50
ZWphLmt1bmRhbmFsYUBhbWQuY29tPjsNCj4gc3Jpbml2YXMua2FuZGFnYXRsYUBsaW5hcm8ub3Jn
OyByb2JoK2R0QGtlcm5lbC5vcmc7DQo+IGtyenlzenRvZi5rb3psb3dza2krZHRAbGluYXJvLm9y
ZzsgY29ub3IrZHRAa2VybmVsLm9yZzsgU2ltZWssIE1pY2hhbA0KPiA8bWljaGFsLnNpbWVrQGFt
ZC5jb20+OyBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsgbGludXgtYXJtLQ0KPiBrZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZw0KPiBDYzogbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZy07
IEt1bmRhbmFsYSwgUHJhdmVlbiBUZWphDQo+IDxwcmF2ZWVuLnRlamEua3VuZGFuYWxhQGFtZC5j
b20+DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggVjMgMi8zXSBkdC1iaW5kaW5nczogbnZtZW06IENv
bnZlcnQgeGxueCx6eW5xbXAtDQo+IG52bWVtLnR4dCB0byB5YW1sDQo+DQo+IENhdXRpb246IFRo
aXMgbWVzc2FnZSBvcmlnaW5hdGVkIGZyb20gYW4gRXh0ZXJuYWwgU291cmNlLiBVc2UgcHJvcGVy
IGNhdXRpb24NCj4gd2hlbiBvcGVuaW5nIGF0dGFjaG1lbnRzLCBjbGlja2luZyBsaW5rcywgb3Ig
cmVzcG9uZGluZy4NCj4NCj4NCj4gT24gMDgvMDEvMjAyNCAwNjoyNiwgUHJhdmVlbiBUZWphIEt1
bmRhbmFsYSB3cm90ZToNCj4gPiBDb252ZXJ0IHRoZSB4bG54LHp5bnFtcC1udm1lbS50eHQgdG8g
eWFtbC4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IFByYXZlZW4gVGVqYSBLdW5kYW5hbGEgPHBy
YXZlZW4udGVqYS5rdW5kYW5hbGFAYW1kLmNvbT4NCj4gPiAtLS0NCj4gPiBQbGVhc2Ugbm90ZSB0
aGF0IERUQiBjaGVjayB3aWxsIGZhaWwNCj4gPiBmb3Igenlxbm1wIGR0c2kgd2l0aCB0aGUgY3Vy
cmVudCBjaGFuZ2VzLg0KPiA+IEFjY29tcGFueWluZyBEZXZpY2UgVHJlZSBTb3VyY2UgKERUUykN
Cj4gPiBjaGFuZ2VzIHdpbGwgYmUgc2VudCBvdXQgc2VwYXJhdGVseS4NCj4NCj4gU28gd2hlcmUg
aXMgdGhhdCBjaGFuZ2U/DQo+DQo+IFRoaXMgaXMgdjMsIHdoZXJlIGlzIHRoZSBjaGFuZ2Vsb2c/
DQpbS3VuZGFuYWxhLCBQcmF2ZWVuIFRlamFdIFRoYW5rcyBmb3IgdGhlIHJldmlldyBJIG1pc3Nl
ZCBhZGRpbmcgdGhlIGNoYW5nZWxvZyBhbmQgSSB3aWxsIHNlbmQgRFRTIGNoYW5nZXMgY29ycmVz
cG9uZGluZyB0byB0aGlzIGluIGEgc2VwYXJhdGUgcGF0Y2guDQoNClJlZ2FyZHMsDQpQcmF2ZWVu
DQo+DQo+DQo+IFJldmlld2VkLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296
bG93c2tpQGxpbmFyby5vcmc+DQo+DQo+IEJlc3QgcmVnYXJkcywNCj4gS3J6eXN6dG9mDQoNCg==

